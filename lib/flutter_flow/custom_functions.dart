import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int likes(UserPostsRecord? post) {
  return post!.likes!.length;
}

bool hasUploadedMedia(String? mediaPath) {
  return mediaPath != null && mediaPath.isNotEmpty;
}

DocumentReference userPostsIdToRef(String id) {
  return FirebaseFirestore.instance.collection('userPosts').doc(id);
}

String buildAlgoliaFilterQuery(
  String? breed,
  String? locationName,
  String? sex,
  double? ageMin,
  double? ageMax,
  double? priceMin,
  double? priceMax,
  bool verified,
  bool sponsored,
) {
  final List<String> queryParts = [];

  // ✅ ALWAYS apply verified filter
  queryParts.add('verified:true');

  void addStringFilter(String field, String? value) {
    if (value != null && value.isNotEmpty) {
      queryParts.add('$field:"$value"');
    }
  }

  void addNumericFilter(
    String field,
    num? value, {
    bool greaterOrEqual = false,
    bool lessOrEqual = false,
  }) {
    if (value != null) {
      if (greaterOrEqual) {
        queryParts.add('$field >= $value');
      } else if (lessOrEqual) {
        queryParts.add('$field <= $value');
      } else {
        queryParts.add('$field = $value');
      }
    }
  }

  void addBoolFilter(String field, bool? value) {
    if (value != null) {
      queryParts.add('$field:${value ? "true" : "false"}');
    }
  }

  // Optional filters (only when user selects them)
  addStringFilter('breed', breed);
  addStringFilter('locationName', locationName);
  addStringFilter('sex', sex);

  // ✅ Sponsored toggle (optional)
  addBoolFilter('sponsored', sponsored);

  // Age range
  addNumericFilter('age', ageMin, greaterOrEqual: true);
  addNumericFilter('age', ageMax, lessOrEqual: true);

  // Price range
  addNumericFilter('price', priceMin, greaterOrEqual: true);
  addNumericFilter('price', priceMax, lessOrEqual: true);

  return queryParts.join(' AND ');
}

int? averageRating(List<int>? ratings) {
  // give me average list of ratings
  if (ratings == null || ratings.isEmpty) {
    return null;
  }

  int sum = 0;
  for (int rating in ratings) {
    sum += rating;
  }
  return (sum / ratings.length).round();
}

DateTime addDaysToDate(
  DateTime baseDate,
  int days,
) {
  return baseDate.add(Duration(days: days));
}

List<DocumentReference>? reverseList(
    List<DocumentReference>? notificationsList) {
  if (notificationsList != null && notificationsList.length > 1) {
    if (notificationsList[0] == notificationsList.last)
      return notificationsList;

    // reverse and return
    return notificationsList.reversed.toList();
  } else
    return notificationsList;
}

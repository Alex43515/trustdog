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
) {
  final List<String> queryParts = [];

  void addStringFilter(String field, String? value) {
    if (value != null && value.isNotEmpty) {
      queryParts.add('$field:"$value"');
    }
  }

  void addNumericFilter(String field, num? value,
      {bool greaterOrEqual = false, bool lessOrEqual = false}) {
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

  // Add filters
  addStringFilter('breed', breed);
  addStringFilter('locationName', locationName);
  addStringFilter('sex', sex);

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

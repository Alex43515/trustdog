// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

/// POSitional params version (Context Builder OFF).
/// The order MUST match your "Define Arguments" list in FlutterFlow.
Future<dynamic> algoliaFilteredSearch(
  String appId,
  String apiKey, // Search-only key
  String indexName,
  String query, // free-text query
  String filterBreeds, // exact facet
  String filterSex, // exact facet
  String filterCity, // exact facet (locationName)
  double? ageMin, // numeric
  double? ageMax, // numeric
  double? priceMin, // numeric
  double? priceMax, // numeric
  int page,
  int hitsPerPage,
) async {
  String _trim(String s) => s.trim();

  // ---- facetFilters (exact matches) ---------------------------------------
  // Using AND semantics by pushing flat strings; if you ever need OR:
  // facetFilters.add([ 'breed:Labrador', 'breed:Golden Retriever' ]);
  final List<dynamic> facetFilters = [];

  if (_trim(filterBreeds).isNotEmpty) {
    facetFilters.add('breed:${_trim(filterBreeds)}');
  }
  if (_trim(filterSex).isNotEmpty) {
    facetFilters.add('sex:${_trim(filterSex)}');
  }
  if (_trim(filterCity).isNotEmpty) {
    // Your records use "locationName"
    facetFilters.add('locationName:${_trim(filterCity)}');
  }

  // ---- numericFilters (ranges) --------------------------------------------
  // Algolia expects strings like "age>=0", "age<=12"
  final List<String> numericFilters = [];

  void addRange(String field, double? min, double? max) {
    // Only add bounds that are provided (nullable-safe)
    if (min != null) numericFilters.add('$field>=${min.toString()}');
    if (max != null) numericFilters.add('$field<=${max.toString()}');
  }

  // Your index now stores these as numbers:
  addRange('age', ageMin, ageMax);
  addRange('price', priceMin, priceMax);

  // ---- request body -------------------------------------------------------
  final Map<String, dynamic> body = {
    'query': _trim(query),
    'page': page,
    'hitsPerPage': hitsPerPage,
    if (facetFilters.isNotEmpty) 'facetFilters': facetFilters,
    if (numericFilters.isNotEmpty) 'numericFilters': numericFilters,
    // Optional niceties, uncomment if you want:
    // 'removeWordsIfNoResults': 'allOptional',
    // 'ignorePlurals': true,
  };

  final uri =
      Uri.https('$appId-dsn.algolia.net', '/1/indexes/$indexName/query');
  final headers = {
    'X-Algolia-Application-Id': appId,
    'X-Algolia-API-Key': apiKey,
    'Content-Type': 'application/json',
  };

  final resp = await http.post(uri, headers: headers, body: jsonEncode(body));
  if (resp.statusCode != 200) {
    throw Exception('Algolia ${resp.statusCode}: ${resp.body}');
  }

  // Return full JSON; in FF bind ListView to $.hits
  return jsonDecode(resp.body) as Map<String, dynamic>;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

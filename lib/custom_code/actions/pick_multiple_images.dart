// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_picker/image_picker.dart';

Future<List<String>> pickMultipleImages() async {
  final ImagePicker picker = ImagePicker();

  // Opens gallery in multi-select mode
  final List<XFile> images = await picker.pickMultiImage();

  // Convert XFile objects → list of file paths (String)
  return images.map((img) => img.path).toList();
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

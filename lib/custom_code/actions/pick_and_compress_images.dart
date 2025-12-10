// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

Future<List<FFUploadedFile>> pickAndCompressImages() async {
  final ImagePicker picker = ImagePicker();

  // User picks multiple images
  final List<XFile> picked = await picker.pickMultiImage();

  if (picked.isEmpty) return [];

  final List<FFUploadedFile> results = [];

  for (final img in picked) {
    try {
      // Read original bytes
      final Uint8List originalBytes = await img.readAsBytes();

      // Compress in memory (no file system, no temp dir)
      final List<int> compressedBytesList =
          await FlutterImageCompress.compressWithList(
        originalBytes,
        quality: 85, // adjust as needed
      );

      final Uint8List compressedBytes = Uint8List.fromList(compressedBytesList);

      // Wrap as FFUploadedFile for FlutterFlow
      results.add(
        FFUploadedFile(
          name: img.name, // or img.path.split('/').last
          bytes: compressedBytes,
        ),
      );
    } catch (e) {
      print('Error compressing ${img.path}: $e');
    }
  }

  return results;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

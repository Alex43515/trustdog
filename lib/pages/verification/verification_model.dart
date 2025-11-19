import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verification_widget.dart' show VerificationWidget;
import 'package:flutter/material.dart';

class VerificationModel extends FlutterFlowModel<VerificationWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_photo = false;
  List<FFUploadedFile> uploadedLocalFiles_photo = [];
  List<String> uploadedFileUrls_photo = [];

  bool isDataUploading_microchip = false;
  List<FFUploadedFile> uploadedLocalFiles_microchip = [];
  List<String> uploadedFileUrls_microchip = [];

  bool isDataUploading_pedigree = false;
  List<FFUploadedFile> uploadedLocalFiles_pedigree = [];
  List<String> uploadedFileUrls_pedigree = [];

  bool isDataUploading_passport = false;
  List<FFUploadedFile> uploadedLocalFiles_passport = [];
  List<String> uploadedFileUrls_passport = [];

  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? verified;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

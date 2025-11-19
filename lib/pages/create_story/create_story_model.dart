import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_story_widget.dart' show CreateStoryWidget;
import 'package:flutter/material.dart';

class CreateStoryModel extends FlutterFlowModel<CreateStoryWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataLd6 = false;
  FFUploadedFile uploadedLocalFile_uploadDataLd6 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataLd6 = '';

  // State field(s) for storyDescription widget.
  FocusNode? storyDescriptionFocusNode;
  TextEditingController? storyDescriptionTextController;
  String? Function(BuildContext, String?)?
      storyDescriptionTextControllerValidator;
  bool isDataUploading_uploadDataP87 = false;
  FFUploadedFile uploadedLocalFile_uploadDataP87 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataP87 = '';

  bool isDataUploading_uploadData908 = false;
  FFUploadedFile uploadedLocalFile_uploadData908 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData908 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    storyDescriptionFocusNode?.dispose();
    storyDescriptionTextController?.dispose();
  }
}

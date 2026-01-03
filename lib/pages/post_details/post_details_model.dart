import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'post_details_widget.dart' show PostDetailsWidget;
import 'package:flutter/material.dart';

class PostDetailsModel extends FlutterFlowModel<PostDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  NotificationsRecord? postNot1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostCommentsRecord? postNot;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? postNot2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

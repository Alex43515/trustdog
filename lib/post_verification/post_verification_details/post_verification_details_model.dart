import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'post_verification_details_widget.dart'
    show PostVerificationDetailsWidget;
import 'package:flutter/material.dart';

class PostVerificationDetailsModel
    extends FlutterFlowModel<PostVerificationDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? postNot3;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? postNot4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

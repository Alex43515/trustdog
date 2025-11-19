import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dog_verification_details_widget.dart' show DogVerificationDetailsWidget;
import 'package:flutter/material.dart';

class DogVerificationDetailsModel
    extends FlutterFlowModel<DogVerificationDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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

import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'deg_details_widget.dart' show DegDetailsWidget;
import 'package:flutter/material.dart';

class DegDetailsModel extends FlutterFlowModel<DegDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

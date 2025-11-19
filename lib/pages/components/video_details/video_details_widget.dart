import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'video_details_model.dart';
export 'video_details_model.dart';

class VideoDetailsWidget extends StatefulWidget {
  const VideoDetailsWidget({
    super.key,
    required this.dogDetails,
  });

  final DogsRecord? dogDetails;

  @override
  State<VideoDetailsWidget> createState() => _VideoDetailsWidgetState();
}

class _VideoDetailsWidgetState extends State<VideoDetailsWidget> {
  late VideoDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoDetailsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        FlutterFlowVideoPlayer(
          path: widget.dogDetails!.postVideo1,
          videoType: VideoType.network,
          width: 500.0,
          height: 500.0,
          autoPlay: true,
          looping: true,
          showControls: true,
          allowFullScreen: true,
          allowPlaybackSpeedMenu: false,
        ),
      ],
    );
  }
}

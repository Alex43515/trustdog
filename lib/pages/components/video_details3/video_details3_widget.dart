import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'video_details3_model.dart';
export 'video_details3_model.dart';

class VideoDetails3Widget extends StatefulWidget {
  const VideoDetails3Widget({
    super.key,
    required this.dogDetails,
  });

  final DogsRecord? dogDetails;

  @override
  State<VideoDetails3Widget> createState() => _VideoDetails3WidgetState();
}

class _VideoDetails3WidgetState extends State<VideoDetails3Widget> {
  late VideoDetails3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoDetails3Model());
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
          path: widget.dogDetails!.postVideo3,
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

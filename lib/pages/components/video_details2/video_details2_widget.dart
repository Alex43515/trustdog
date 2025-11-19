import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'video_details2_model.dart';
export 'video_details2_model.dart';

class VideoDetails2Widget extends StatefulWidget {
  const VideoDetails2Widget({
    super.key,
    required this.dogDetails,
  });

  final DogsRecord? dogDetails;

  @override
  State<VideoDetails2Widget> createState() => _VideoDetails2WidgetState();
}

class _VideoDetails2WidgetState extends State<VideoDetails2Widget> {
  late VideoDetails2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoDetails2Model());
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
          path: widget.dogDetails!.postVideo2,
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

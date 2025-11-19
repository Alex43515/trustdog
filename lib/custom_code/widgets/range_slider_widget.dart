// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({
    Key? key,
    this.width,
    this.height,
    required this.min,
    required this.max,
    required this.start,
    required this.end,
    required this.divisions,
    this.textColor = Colors.black,
    this.sliderColor = Colors.blue,
    this.thumbColor = Colors.white,
    this.inactiveTrackColor = Colors.grey,
    this.showLabels = true,
    this.showRangeLabels = true,
    this.startLabel = 'Start: ',
    this.endLabel = 'End: ',
    this.labelFontSize = 16.0,
    this.valueFontSize = 16.0,
    required this.isEnabled, // Add a boolean property to indicate if the slider is enabled
    this.onChange,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double min;
  final double max;
  final double start;
  final double end;
  final int divisions;
  final Color textColor;
  final Color sliderColor;
  final Color thumbColor;
  final Color inactiveTrackColor;
  final bool showLabels;
  final bool showRangeLabels;
  final String startLabel;
  final String endLabel;
  final double labelFontSize;
  final double valueFontSize;
  final bool isEnabled;
  final Future Function(double startValue, double endValue)? onChange;

  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  late RangeValues _currentRangeValues;
  late TextEditingController _startController;
  late TextEditingController _endController;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = RangeValues(widget.start, widget.end);
    _startController = TextEditingController(text: widget.start.toString());
    _endController = TextEditingController(text: widget.end.toString());
  }

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    super.dispose();
  }

  void _updateLabels() {
    _startController.text = _currentRangeValues.start.round().toString();
    _endController.text = _currentRangeValues.end.round().toString();
  }

  Widget buildLabel({
    required String label,
    required TextEditingController controller,
  }) {
    return Expanded(
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: widget.textColor,
              fontSize: widget.labelFontSize,
            ),
          ),
          SizedBox(
            width: 50,
            child: TextField(
              controller: controller,
              readOnly: true,
              style: TextStyle(
                color: widget.textColor,
                fontSize: widget.valueFontSize,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSliderContent() {
    return Column(
      children: [
        if (widget.showLabels)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildLabel(
                  label: widget.startLabel,
                  controller: _startController,
                ),
                buildLabel(
                  label: widget.endLabel,
                  controller: _endController,
                ),
              ],
            ),
          ),
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 4.0,
            activeTrackColor: widget.sliderColor,
            inactiveTrackColor: widget.inactiveTrackColor,
            thumbColor: widget.thumbColor,
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            min: widget.min,
            max: widget.max,
            divisions: widget.divisions,
            labels: widget.showRangeLabels
                ? RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  )
                : null,
            onChanged: widget.isEnabled
                ? (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                      if (widget.showRangeLabels) {
                        _updateLabels();
                      }
                      if (widget.onChange != null) {
                        widget.onChange?.call(values.start.roundToDouble(),
                            values.end.roundToDouble());
                      }
                    });
                  }
                : null,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: buildSliderContent(),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

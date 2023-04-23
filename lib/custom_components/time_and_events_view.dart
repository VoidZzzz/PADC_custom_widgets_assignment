import 'package:flutter/material.dart';
import '../home_page.dart';
import '../utils/dimens.dart';

class TimeAndEventsView extends StatelessWidget {
  const TimeAndEventsView(
      {Key? key,
        required this.layerLink,
        required this.timeList,
        required this.index})
      : super(key: key);

  final LayerLink layerLink;
  final List<List<String>> timeList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (index == 0) ? Colors.white.withOpacity(0.1) : Colors.black12,
      height: (index == 0) ? SIZE_150X : SIZE_80X,
      child: Column(
        children: [
          TimeEventsTitleView(
            layerLink: layerLink,
            index: index,
          ),
          DateTimeDottedLineAndEventsCardView(
            timeList: timeList,
            index: index,
          ),
        ],
      ),
    );
  }
}
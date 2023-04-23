import 'package:flutter/material.dart';
import '../home_page.dart';
import '../utils/dimens.dart';

class MyPatientsList extends StatelessWidget {
  final bool isDetails;
  final double padding;
  final double width;
  final Color color;
  final double borderRadius;
  final double cardElevation;

  const MyPatientsList({
    Key? key,
    this.isDetails = false,
    required this.borderRadius,
    required this.color,
    required this.width,
    required this.padding,
    required this.cardElevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_8X),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: cardElevation,
        child: Container(
          width: width,
          decoration: BoxDecoration(color: color),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleView(
                  isDetails: isDetails,
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                SubtitleView(
                  isDetails: isDetails,
                  color: Colors.white70,
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                Visibility(
                  visible: isDetails,
                  child: const DescriptionView(),
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                PatientsAndCheckRowView(isDetails: isDetails)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
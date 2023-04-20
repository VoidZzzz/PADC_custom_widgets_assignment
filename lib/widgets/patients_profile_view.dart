import 'package:flutter/material.dart';
import 'package:padc_custom_widget_assignment/utils/dimens.dart';

class PatientProfileView extends StatelessWidget {
  final String imageUrl;
  final double size;

  const PatientProfileView({Key? key, required this.imageUrl, this.size = SIZE_22X})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MARGIN_22X),
      ),
      height: size,
      width: size,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:padc_custom_widget_assignment/utils/dimens.dart';

class IconView extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconView({Key? key, required this.icon, this.size = SIZE_25X}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: Colors.white,
    );
  }
}

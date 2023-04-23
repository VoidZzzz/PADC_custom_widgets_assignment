import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:padc_custom_widget_assignment/utils/dimens.dart';

class OfficeNameAndTotalPatientsView extends StatelessWidget {
  const OfficeNameAndTotalPatientsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time,
          color: Colors.black38,
          size: SIZE_15X,
        ),
        const SizedBox(
          width: SIZE_5X,
        ),
        Text(
          "8:30 AM - 02:00 PM",
          style: GoogleFonts.inter(
              color: Colors.black38, fontSize: TEXT_13X, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
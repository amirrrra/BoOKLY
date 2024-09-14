import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookSubdetailsWidget extends StatelessWidget {
  final String title;
  final String value;
  const BookSubdetailsWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Styles.style14.copyWith(color: ColorPalette.kWhiteE),
        ),
        Text(
          value,
          style: Styles.style16.copyWith(color: ColorPalette.kWhite),
        ),
      ],
    );
  }
}

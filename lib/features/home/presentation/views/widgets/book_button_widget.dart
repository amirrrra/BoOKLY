import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookButtonWidget extends StatelessWidget {
  final String text;
  final double leftRadius;
  final double rightRadius;
  final void Function()? onPressed;

  const BookButtonWidget({
    super.key,
    required this.leftRadius,
    required this.rightRadius,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: const Size(150, 50),
        backgroundColor: ColorPalette.kBabyBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(rightRadius),
            bottomRight: Radius.circular(rightRadius),
            topLeft: Radius.circular(leftRadius),
            bottomLeft: Radius.circular(leftRadius),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: Styles.style17.copyWith(
            color: ColorPalette.kWhite,
          ),
        ),
      ),
    );
  }
}

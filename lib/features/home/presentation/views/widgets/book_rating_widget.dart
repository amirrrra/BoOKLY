import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          'assets/images/star.svg',
        ),
        const SizedBox(
          width: 5,
        ),
         const Text(
          '4.8',
          style: Styles.style16,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          '(288)',
          style: Styles.style14,
        ),
      ],
    );
  }
}

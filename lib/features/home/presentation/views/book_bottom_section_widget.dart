import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookBottomSectionWidget extends StatelessWidget {
  const BookBottomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Overview',
          style: Styles.style20,
        )
      ],
    );
  }
}

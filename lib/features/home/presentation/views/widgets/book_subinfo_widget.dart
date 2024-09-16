import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookSubinfoWidget extends StatelessWidget {
  final String value;
  final String title;
  const BookSubinfoWidget({
    super.key,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.style20,
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: Styles.style14,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

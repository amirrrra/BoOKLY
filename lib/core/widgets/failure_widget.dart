import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  final String errMessage;
  const FailureWidget({
    super.key,
    required this.errMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.warning_rounded,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            errMessage,
            style: Styles.style16,
            maxLines: 4,
          ),
        ),
      ],
    );
  }
}

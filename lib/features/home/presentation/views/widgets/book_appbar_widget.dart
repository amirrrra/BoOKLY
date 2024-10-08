import 'package:bookly/core/utils/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookAppbarWidget extends StatefulWidget {
  const BookAppbarWidget({super.key});

  @override
  State<BookAppbarWidget> createState() => _BookAppbarWidgetState();
}

class _BookAppbarWidgetState extends State<BookAppbarWidget> {
  bool isMarked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.chevron_left_rounded,
              size: 35,
              color: ColorPalette.kWhite,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isMarked = !isMarked;
              });
            },
            icon: Icon(
              isMarked
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_outline_rounded,
              size: 30,
              color: ColorPalette.kWhite,
            ),
          ),
        ],
      ),
    );
  }
}

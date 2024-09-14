import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_appbar_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_widget.dart';
import 'package:flutter/material.dart';

class BookTopSectionWidget extends StatelessWidget {
  const BookTopSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.kPrimaryColor,
      child: const SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            BookAppbarWidget(),
            SizedBox(height: 30),
            BookDetailsWidget(),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

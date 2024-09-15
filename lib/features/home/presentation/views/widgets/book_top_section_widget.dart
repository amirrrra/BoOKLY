import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_appbar_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_widget.dart';
import 'package:flutter/material.dart';

class BookTopSectionWidget extends StatelessWidget {
  final BookModel bookModel;

  const BookTopSectionWidget({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580,
      color: ColorPalette.kPrimaryColor,
      child:  SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const BookAppbarWidget(),
            const SizedBox(height: 30),
            BookDetailsWidget(bookModel: bookModel),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

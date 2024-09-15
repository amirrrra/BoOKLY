import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_bottom_section_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_overlay_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_top_section_widget.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  final BookModel bookModel;
  const BookView({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                BookTopSectionWidget(bookModel: bookModel),
                BookBottomSectionWidget(bookModel: bookModel),
              ],
            ),
            Positioned(
              top: 580 - 25,
              child: BookOverlayWidget(bookModel: bookModel),
            )
          ],
        ),
      ),
    );
  }
}

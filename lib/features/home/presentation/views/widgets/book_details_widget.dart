import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsWidget extends StatelessWidget {
  final int index;
  final BookModel bookModel;
  const BookDetailsWidget({
    super.key,
    required this.bookModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              height: screenWidth / 3.7,
              child: const BookCoverWidget(
                radius: 7,
                imageUrl: 'https://pbs.twimg.com/media/DTBbTrJX4AA8rJe.jpg',
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * .5,
                    child: Text(
                      'Becauase you are Allah',
                      style: Styles.style19.copyWith(height: 1),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Ali Gaber',
                    style: Styles.style14,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        '19.99',
                        style: Styles.style16,
                      ),
                      Text(
                        ' €',
                        style: Styles.style14.copyWith(
                          color: ColorPalette.kBlack,
                        ),
                      ),
                      const Spacer(),
                      const BookRatingWidget(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
    final amount = bookModel.items[index].saleInfo?.listPrice?.amount;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              height: screenWidth / 3.7,
              child: BookCoverWidget(
                radius: 7,
                imageUrl:
                    bookModel.items[index].volumeInfo?.imageLinks?.thumbnail ??
                        '',
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
                      bookModel.items[index].volumeInfo?.title ?? '',
                      style: Styles.style19.copyWith(height: 1),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    bookModel.items[index].volumeInfo?.author ?? '',
                    style: Styles.style14,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        amount == null ? 'Free' : '$amount',
                        style: Styles.style16,
                      ),
                      if (amount != null)
                        Text(
                          ' €',
                          style: Styles.style14.copyWith(
                            color: ColorPalette.kBlack,
                          ),
                        ),
                      const Spacer(),
                      BookRatingWidget(
                        bookModel: bookModel,
                        index: index,
                      ),
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

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRatingWidget extends StatelessWidget {
  final int index;
  final BookModel bookModel;
  const BookRatingWidget({
    super.key,
    required this.bookModel,
    required this.index,
  });

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
        Text(
          '${bookModel.items[index].volumeInfo?.averageRating ?? '0'}',
          style: Styles.style16,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '(${bookModel.items[index].volumeInfo?.ratingsCount ?? '0'})',
          style: Styles.style14,
        ),
      ],
    );
  }
}

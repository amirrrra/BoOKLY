import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeRatingWidget extends StatelessWidget {
  final BookModel bookModel;
  const HomeRatingWidget({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AssetsData.star),
        const SizedBox(width: 5),
        Text(
          '${bookModel.volumeInfo?.averageRating ?? '0'}',
          style: Styles.style16,
        ),
      ],
    );
  }
}

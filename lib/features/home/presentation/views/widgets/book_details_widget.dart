import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_subdetails_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsWidget extends StatelessWidget {
  final BookModel bookModel;

  const BookDetailsWidget({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: screenWidth / 1.6,
            child: BookCoverWidget(
              radius: 16,
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
            ),
          ),
          const SizedBox(height: 25),
          Text(
            bookModel.volumeInfo?.title ?? '-',
            style: Styles.style25,
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          Text(
            'by ${bookModel.volumeInfo?.author ?? 'Unknown'}',
            style: Styles.style14.copyWith(color: ColorPalette.kWhiteE),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BookSubdetailsWidget(
                title: 'Average',
                value: '${bookModel.volumeInfo?.averageRating ?? '0'}',
              ),
              BookSubdetailsWidget(
                title: 'Pages',
                value: '${bookModel.volumeInfo?.pageCount ?? '0'}',
              ),
              BookSubdetailsWidget(
                title: 'Language',
                value: bookModel.volumeInfo?.language ?? '-',
              ),
              BookSubdetailsWidget(
                title: 'Ratings',
                value: '(${bookModel.volumeInfo?.ratingsCount ?? '0'})',
              ),
            ],
          )
        ],
      ),
    );
  }
}

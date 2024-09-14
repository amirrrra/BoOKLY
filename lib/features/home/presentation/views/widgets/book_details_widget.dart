import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_subdetails_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: screenWidth / 1.6,
          child: const BookCoverWidget(
            radius: 16,
            imageUrl: 'https://pbs.twimg.com/media/DTBbTrJX4AA8rJe.jpg',
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          'Becauase you are Allah',
          style: Styles.style25,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          'by Ali Gaber',
          style: Styles.style14.copyWith(color: ColorPalette.kWhiteE),
        ),
        const SizedBox(height: 25),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BookSubdetailsWidget(
              title: 'Rating',
              value: '4.7',
            ),
            BookSubdetailsWidget(
              title: 'Pages',
              value: '455',
            ),
            BookSubdetailsWidget(
              title: 'Language',
              value: 'ENG',
            ),
            BookSubdetailsWidget(
              title: 'reviews',
              value: '255',
            ),
          ],
        )
      ],
    );
  }
}

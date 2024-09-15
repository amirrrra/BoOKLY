import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BookBottomSectionWidget extends StatelessWidget {
    final BookModel bookModel;

  const BookBottomSectionWidget({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            'Overview',
            style: Styles.style20,
          ),
          const SizedBox(height: 10),
          Text(
            bookModel.volumeInfo?.description??'..',
            style: Styles.style14,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

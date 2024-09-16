import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_subinfo_widget.dart';
import 'package:flutter/material.dart';

class BookBottomSectionWidget extends StatelessWidget {
  final BookModel bookModel;

  const BookBottomSectionWidget({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(height: 50),
          BookSubinfoWidget(
            title: 'Overview',
            value: bookModel.volumeInfo?.description ?? '...',
          ),
          BookSubinfoWidget(
            title: 'Publisher',
            value: bookModel.volumeInfo?.publisher ?? '...',
          ),
          BookSubinfoWidget(
            title: 'Language',
            value: bookModel.volumeInfo?.language ?? '...',
          ),
        ],
      ),
    );
  }
}

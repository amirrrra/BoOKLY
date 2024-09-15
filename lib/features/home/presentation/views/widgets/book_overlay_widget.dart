import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_button_widget.dart';
import 'package:flutter/material.dart';

class BookOverlayWidget extends StatelessWidget {
  final BookModel bookModel;

  const BookOverlayWidget({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    final amount = bookModel.saleInfo?.listPrice?.amount;

    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BookButtonWidget(
            leftRadius: 15,
            rightRadius: 0,
            text: amount == null ? 'Unavailable' : '$amount €',
            onPressed: () {},
          ),
          const VerticalDivider(
            color: ColorPalette.kWhite,
            width: 1,
            thickness: 1,
          ),
          BookButtonWidget(
            leftRadius: 0,
            rightRadius: 15,
            text: 'Preview',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

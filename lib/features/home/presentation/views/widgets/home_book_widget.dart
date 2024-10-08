import 'package:bookly/core/utils/routes.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_cover_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBookWidget extends StatelessWidget {
  final BookModel bookModel;
  const HomeBookWidget({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(Routes.kBook, extra: bookModel);
        },
        child: Container(
          color: Colors.transparent, //container color detect taps
          child: Row(
            children: [
              SizedBox(
                height: screenWidth / 3.7,
                child: BookCoverWidget(
                  radius: 7,
                  imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
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
                        bookModel.volumeInfo?.title ?? '',
                        style: Styles.style19.copyWith(height: 1),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            bookModel.volumeInfo?.author ?? '',
                            style: Styles.style14,
                          ),
                        ),
                        const SizedBox(width: 5),
                        HomeRatingWidget(
                          bookModel: bookModel,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

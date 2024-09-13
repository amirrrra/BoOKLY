import 'package:bookly/features/home/presentation/views/widgets/book_details_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsListWidget extends StatelessWidget {
  const BookDetailsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return const Column(
          children: [
            BookDetailsWidget(),
            SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

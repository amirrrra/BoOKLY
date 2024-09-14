import 'package:bookly/features/home/presentation/views/book_bottom_section_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_top_section_widget.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          BookTopSectionWidget(),
          BookBottomSectionWidget()
        ],
      ),
    );
  }
}

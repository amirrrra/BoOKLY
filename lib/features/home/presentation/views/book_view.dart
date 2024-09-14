import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_appbar_widget.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPalette.kPrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            BookAppbarWidget(),
            
          ],
        ),
      ),
    );
  }
}

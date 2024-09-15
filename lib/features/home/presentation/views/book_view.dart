import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_bottom_section_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_overlay_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_top_section_widget.dart';
import 'package:flutter/material.dart';

class BookView extends StatefulWidget {
  final BookModel bookModel;
  const BookView({super.key, required this.bookModel});

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  final GlobalKey _globalKey = GlobalKey();
  double sectionHeight = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _getSectionHeight();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  key: _globalKey,
                  color: ColorPalette.kPrimaryColor,
                  child: BookTopSectionWidget(bookModel: widget.bookModel),
                ),
                BookBottomSectionWidget(bookModel: widget.bookModel),
              ],
            ),
            if (sectionHeight > 0)
              Positioned(
                top: sectionHeight - 25,
                child: BookOverlayWidget(bookModel: widget.bookModel),
              )
          ],
        ),
      ),
    );
  }

  void _getSectionHeight() {
    final renderBox =
        _globalKey.currentContext?.findRenderObject() as RenderBox;
    setState(() {
      sectionHeight = renderBox.size.height;
    });
  }
}

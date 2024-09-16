import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class BookButtonWidget extends StatelessWidget {
  final BookModel bookModel;

  const BookButtonWidget({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: const Size(250, 60),
        backgroundColor: ColorPalette.kBabyBlack,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      onPressed: () => launchLink(bookModel.volumeInfo?.previewLink ?? ''),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AssetsData.openbook),
          const SizedBox(width: 10,),
          Text(
            'READ BOOK',
            style: Styles.style17.copyWith(
              color: ColorPalette.kWhite,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> launchLink(String link) async {
    final url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }
}

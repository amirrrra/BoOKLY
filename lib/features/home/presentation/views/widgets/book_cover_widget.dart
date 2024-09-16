import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/color_palette.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BookCoverWidget extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final double ratio;

  const BookCoverWidget({
    super.key,
    required this.radius,
    this.ratio = 67 / 100,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    //Temporary fix Cashed url Exception
    FlutterError.onError = (flutterErrorDetails) {
      if (flutterErrorDetails.library == "image resource service" &&
          flutterErrorDetails.exception
              .toString()
              .startsWith("HttpException: Invalid statusCode: 404, uri")) {
        return;
      }
      return;
    };
    return AspectRatio(
      aspectRatio: ratio,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return Image.asset(
              AssetsData.imagePlaceholder,
              fit: BoxFit.fill,
            );
          },
          progressIndicatorBuilder: (context, url, progress) {
            return const SpinKitCubeGrid(
              color: ColorPalette.kPrimaryColor,
              size: 20,
            );
          },
        ),
      ),
    );
  }
}

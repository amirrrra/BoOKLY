import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
    return AspectRatio(
      aspectRatio: ratio,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return const Icon(Icons.error);
          },
        ),
      ),
    );
  }
}

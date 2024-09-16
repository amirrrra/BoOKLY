import 'package:bookly/core/utils/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SpinKitSquareCircle(
      color: ColorPalette.kPrimaryColor,
    );
  }
}

import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/splash/presentation/views/widgets/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: screenHeight * .35),
          SvgPicture.asset(
            AssetsData.logo,
            height: 55,
            colorFilter: const ColorFilter.mode(
              ColorPalette.kPrimaryColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 12),
          const SplashWidget(),
        ],
      ),
    );
  }
}

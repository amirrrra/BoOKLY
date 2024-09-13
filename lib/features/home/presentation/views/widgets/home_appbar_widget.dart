import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            colorFilter: const ColorFilter.mode(
              ColorPalette.kPrimaryColor,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            AssetsData.search,
            colorFilter: const ColorFilter.mode(
              ColorPalette.kBlack,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}

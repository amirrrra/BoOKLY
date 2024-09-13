import 'package:bookly/core/utils/color_palette.dart';
import 'package:flutter/material.dart';

class HomeTabBarWidget extends StatelessWidget {
  const HomeTabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [
      const Tab(text: 'Programming'),
      const Tab(text: 'Magic'),
      const Tab(text: 'Imaginary'),
      const Tab(text: 'Health'),
      const Tab(text: 'Novels'),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelPadding: const EdgeInsets.only(right: 25),
        labelColor: ColorPalette.kBlack,
        unselectedLabelColor: ColorPalette.kGrey,
        indicatorColor: ColorPalette.kPrimaryColor,
        overlayColor: WidgetStateProperty.all(ColorPalette.kTransparent),
        dividerColor: Colors.transparent,
      ),
    );
  }
}

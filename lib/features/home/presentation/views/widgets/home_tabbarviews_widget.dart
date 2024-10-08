import 'package:bookly/features/home/presentation/views/widgets/home_booklist_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_tabbar_widget.dart';
import 'package:flutter/material.dart';

class HomeTabbarviewsWidget extends StatelessWidget {
  const HomeTabbarviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(), 
      children: HomeTabBarWidgetState()
          .categories
          .map((title) => const Center(child: HomeBooklistWidget()))
          .toList(),
    );
  }
}

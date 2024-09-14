import 'package:bookly/features/home/presentation/views/widgets/book_details_list_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_tabbar_widget.dart';
import 'package:flutter/material.dart';

class HomeTabbarviewsWidget extends StatefulWidget {
  const HomeTabbarviewsWidget({super.key});

  @override
  State<HomeTabbarviewsWidget> createState() => _HomeTabbarviewsWidgetState();
}

class _HomeTabbarviewsWidgetState extends State<HomeTabbarviewsWidget> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: HomeTabBarWidgetState().categories
          .map((title) => const Center(child:  BookDetailsListWidget()))
          .toList(),
    );
  }
}

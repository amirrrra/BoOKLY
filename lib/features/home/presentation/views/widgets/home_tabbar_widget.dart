import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/features/home/presentation/views%20model/cubit/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabBarWidget extends StatefulWidget {
  const HomeTabBarWidget({
    super.key,
  });

  @override
  State<HomeTabBarWidget> createState() => HomeTabBarWidgetState();
}

class HomeTabBarWidgetState extends State<HomeTabBarWidget> {
  final List<String> categories = [
    'Programming',
    'Travel',
    'Sports',
    'Cooking',
    'Novels',
    'Math',
    'Hobbies',
    'Computers',
    'Teen',
    'Imaginary',
    'Horror',
  ];

  @override
  Widget build(BuildContext context) {
    final tabs = categories.map((item) => Tab(text: item)).toList();

    void triggerFetchBooks(int index) {
      BlocProvider.of<BookCubit>(context).fetchBooks(
        category: categories[index],
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: TabBar(
        onTap: (index) {
          triggerFetchBooks(index);
        },
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

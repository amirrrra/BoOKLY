import 'package:bookly/features/home/presentation/views/widgets/home_appbar_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_tabbar_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 40),
            HomeAppBarWidget(),
            SizedBox(height: 20),
            HomeTabBarWidget(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:bookly/features/home/presentation/views/widgets/home_appbar_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_tabbar_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_tabbarviews_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomeTabBarWidgetState().categories.length,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                const SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      HomeAppBarWidget(),
                      SizedBox(height: 20),
                      HomeTabBarWidget(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ];
            },
            body: const HomeTabbarviewsWidget(),
          ),
        ),
      ),
    );
  }
}

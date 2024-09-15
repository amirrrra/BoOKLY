import 'package:bookly/features/search/presentation/views/widgets/search_appbar_widget.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_widget.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 15),
          SearchAppbarWidget(),
          Expanded(child: SearchResultWidget()),
        ],
      ),
    );
  }
}

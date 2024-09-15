import 'package:bookly/features/search/presentation/views/widgets/search_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchAppbarWidget extends StatelessWidget {
  const SearchAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 5),
        child: Row(
          children: [
            IconButton(
              onPressed: () => GoRouter.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            const Expanded(child: SearchTextfieldWidget())
          ],
        ),
      ),
    );
  }
}

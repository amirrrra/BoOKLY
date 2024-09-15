import 'package:bookly/core/widgets/loading_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_book_widget.dart';
import 'package:bookly/features/search/presentation/view%20models/search%20cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_noresult_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccessState) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.booksList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  HomeBookWidget(
                    bookModel: state.booksList[index],
                  ),
                  const SizedBox(height: 20),
                ],
              );
            },
          );
        } else if (state is SearchNoDataState) {
          return const SearchNoResultWidget();
        } else if (state is SearchLoadingState) {
          return const LoadingWidget();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

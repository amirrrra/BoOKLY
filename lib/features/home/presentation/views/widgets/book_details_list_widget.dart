import 'package:bookly/core/widgets/failure_widget.dart';
import 'package:bookly/core/widgets/loading_widget.dart';
import 'package:bookly/features/home/presentation/views%20model/cubit/book_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsListWidget extends StatelessWidget {
  const BookDetailsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        if (state is BookSuccessState) {
          return SliverList.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return const Column(
                children: [
                  BookDetailsWidget(),
                  SizedBox(height: 20),
                ],
              );
            },
          );
        } else if (state is BookFailureState) {
          return FailureWidget(errMessage: state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}

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
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.bookModel.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  BookDetailsWidget(
                    bookModel: state.bookModel,
                    index: index,
                  ),
                  const SizedBox(height: 20),
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

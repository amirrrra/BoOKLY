part of 'book_cubit.dart';

sealed class BookState {}

final class BookInitialState extends BookState {}

final class BookLoadingState extends BookState {}

final class BookSuccessState extends BookState {
  final BookModel bookModel;

  BookSuccessState({required this.bookModel});
}

final class BookFailureState extends BookState {
  final String errMessage;

  BookFailureState({required this.errMessage});
}

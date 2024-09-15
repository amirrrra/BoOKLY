part of 'search_cubit.dart';

sealed class SearchState {}

final class SearchInitialState extends SearchState {}

final class SearchLoadingState extends SearchState {}

final class SearchSuccessState extends SearchState {
  final List<BookModel> booksList;

  SearchSuccessState({required this.booksList});
}

final class SearchNoDataState extends SearchState {}

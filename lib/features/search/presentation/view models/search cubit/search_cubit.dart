import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchRelevantBooks({required String category}) async {
    var data = await homeRepo.fetchBooks(category: category);
    data.fold((failure) {
      emit(SearchNoDataState());
    }, (booksList) {
      emit(SearchSuccessState(booksList: booksList));
    });
  }
}

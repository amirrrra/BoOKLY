import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this.homeRepo) : super(BookInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchBooks({required String category}) async {
    emit(BookLoadingState());
    var data = await homeRepo.fetchBooks(category: category);

    data.fold(
      (failure) {
        emit(BookFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(BookSuccessState(bookModel: books));
      },
    );
  }
}

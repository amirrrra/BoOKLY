import 'package:bookly/core/failure/failure.dart';
import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, BookModel>> fetchBooks({
    required String category,
  }) async {
    try {
      var repoData = await ApiService().get(endpoint: 'volumes?q=$category');
      BookModel bookModel = BookModel.fromJson(repoData);

      return right(bookModel);
    } catch (e) {
      return left(Failure(errMessage: e.toString()));
    }
  }
}

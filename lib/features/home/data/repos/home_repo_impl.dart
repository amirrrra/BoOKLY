import 'package:bookly/core/failure/failure.dart';
import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks({
    required String category,
  }) async {
    try {
      var repoData = await ApiService().get(endpoint: 'volumes?q=$category');
      List<BookModel> booksList = [];

      for (var item in repoData['items']) {
        booksList.add(BookModel.fromJson(item));
      }

      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        Failure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}

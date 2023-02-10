// ignore: file_names
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_services.dart';
import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var result = await apiServices.getBooksList(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming");

      List<BookModel> books = [];
      for (var item in result['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioError) {
        return left(ServerError.fromDioError(error));
      }
      return left(ServerError(errorMsg: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var result = await apiServices.getBooksList(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:Programming");

      List<BookModel> books = [];
      for (var item in result['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioError) {
        return left(ServerError.fromDioError(error));
      }
      return left(ServerError(errorMsg: error.toString()));
    }
  }
}

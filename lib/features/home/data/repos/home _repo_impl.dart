// ignore: file_names
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/api_services.dart';
import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  final String _apiKey = "AIzaSyBxr03lwzZK31H_YqvGtGvTHFkaexrhODA";
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var result = await apiServices.getBooksList(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=computer science");

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
          endPoint: "volumes?Filtering=free-ebooks&q=Programming");

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
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var result = await apiServices.getBooksList(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=relevance&q=$category");

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
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String bookTitle}) async {
    //https://www.googleapis.com/books/v1/volumes?q=flowers+inauthor:keyes&key=yourAPIKey
    try {
      var result = await apiServices.getBooksList(
          endPoint: "volumes?=free-ebooks&q=$bookTitle&key=$_apiKey");
      //https://www.googleapis.com/books/v1/
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

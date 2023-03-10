import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String bookTitle});
}

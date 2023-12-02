// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> FetchFeatuersBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) return Left(ServerFailure.fromDioError(e));
    }
    return Left(ServerFailure(e.toString()));
  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchNewssetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newst&q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) return Left(ServerFailure.fromDioError(e));
      return Left(ServerFailure(e.toString()));
    }
  }
}

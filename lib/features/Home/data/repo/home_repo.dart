// ignore_for_file: non_constant_identifier_names

import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> FetchNewssetBooks();
  Future<Either<Failure, List<BookModel>>> FetchFeatuersBooks();
}

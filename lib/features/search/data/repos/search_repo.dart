import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBook({
    required String searchKeyword,
  });
}

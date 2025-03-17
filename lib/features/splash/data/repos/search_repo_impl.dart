import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/features/splash/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl extends SearchRepo {
  @override
  Future<Either<Failure, List<BookModel>>> searchBook(
      {required String searchKeyword}) {
    // TODO: implement searchBook
    throw UnimplementedError();
  }
}

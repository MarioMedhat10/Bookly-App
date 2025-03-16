part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object?> get props => [];
}

final class SimilarBooksInitialState extends SimilarBooksState {}

final class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccessState(this.books);
}

final class SimilarBooksLoadingState extends SimilarBooksState {}

final class SimilarBooksFailureState extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailureState(this.errMessage);
}

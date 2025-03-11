part of 'featured_book_cubit.dart';

@immutable
sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object?> get props => [];
}

final class FeaturedBookInitialState extends FeaturedBookState {}

final class FeaturedBookSuccessState extends FeaturedBookState {
  final List<BookModel> books;

  const FeaturedBookSuccessState(this.books);
}

final class FeaturedBookLoadingState extends FeaturedBookState {}

final class FeaturedBookFailureState extends FeaturedBookState {
  final String errMessage;

  const FeaturedBookFailureState(this.errMessage);
}

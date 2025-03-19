import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitialState());

  final SearchRepo searchRepo;

  Future<void> searchBooks({required String searchKeyword}) async {
    emit(SearchLoadingState());

    var result = await searchRepo.searchBook(searchKeyword: searchKeyword);

    result.fold((failure) {
      emit(SearchFailureState(failure.errMessage));
    }, (books) {
      emit(SearchSuccessState(books));
    });
  }
}

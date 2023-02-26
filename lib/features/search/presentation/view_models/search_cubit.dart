import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../home/data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchStateInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSearchedBooks({required String title}) async {
    emit(SearchStateLoading());
    var result = await homeRepo.fetchSearchedBooks(bookTitle: title);

    result.fold((failure) {
      emit(SearchStateFailure(failure.errorMsg));
    }, (books) {
      emit(SearchStateSuccess(books));
    });
  }
}

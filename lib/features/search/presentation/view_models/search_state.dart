part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();
  @override
  List<Object> get props => [];
}
class SearchStateInitial extends SearchState {}

class SearchStateLoading extends SearchState {}

class SearchStateFailure extends SearchState {
  final String errorMsg;
  const SearchStateFailure(this.errorMsg);
}

class SearchStateSuccess extends SearchState {
  final List<BookModel> books;
  const SearchStateSuccess(this.books);
}

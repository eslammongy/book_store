part of 'featured_cubit_bloc.dart';

abstract class FeaturedCubitState extends Equatable {
  const FeaturedCubitState();

  @override
  List<Object> get props => [];
}

class FeaturedCubitInitial extends FeaturedCubitState {}

class FeaturedCubitLoading extends FeaturedCubitState {}

class FeaturedCubitFailure extends FeaturedCubitState {
  final String errorMsg;
  const FeaturedCubitFailure(this.errorMsg);
}

class FeaturedCubitSuccess extends FeaturedCubitState {
  final List<BookModel> books;
  const FeaturedCubitSuccess(this.books);
}

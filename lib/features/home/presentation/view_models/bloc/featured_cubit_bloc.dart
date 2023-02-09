import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/animation.dart';

part 'featured_cubit_event.dart';
part 'featured_cubit_state.dart';

class FeaturedCubitBloc extends Cubit<FeaturedCubitState> {
  FeaturedCubitBloc(this.homeRepo) : super(FeaturedCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedCubitFailure(failure.errorMsg));
    }, (books) {
      emit(FeaturedCubitSuccess(books));
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_cubit_event.dart';
part 'featured_cubit_state.dart';

class FeaturedCubitBloc extends Bloc<FeaturedCubitEvent, FeaturedCubitState> {
  FeaturedCubitBloc() : super(FeaturedCubitInitial()) {
    on<FeaturedCubitEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

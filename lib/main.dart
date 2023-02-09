import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/utils/app_routes.dart';
import 'package:book_store/core/utils/services_locaor.dart';
import 'package:book_store/features/home/presentation/view_models/newest_cubit/newest_books_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:book_store/features/home/data/repos/home%20_repo_impl.dart';
import 'package:book_store/features/home/presentation/view_models/featured_cubit/featured_cubit_bloc.dart';
import 'package:book_store/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedCubitBloc(getIt.get<HomeRepoImpl>())),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: whiteColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}

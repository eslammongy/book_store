import 'package:book_store/core/utils/services_locaor.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home%20_repo_impl.dart';
import 'package:book_store/features/home/presentation/view_models/similar_books/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/book_details.dart';
import 'package:book_store/features/home/presentation/views/home_screen.dart';
import 'package:book_store/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/homeScreen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/searchScreen',
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: '/bookDetails',
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: BookDetails(
          bookModel: state.extra as BookModel,
        ),
      ),
    )
  ]);
}

import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/widgets/custom_error_view.dart';
import 'package:book_store/core/widgets/custom_loading_view.dart';
import 'package:book_store/features/home/presentation/view_models/featured_cubit/featured_cubit_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubitBloc, FeaturedCubitState>(
      builder: (context, state) {
        if (state is FeaturedCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push('/bookDetails', extra: state.books[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 10),
                    child: CustomBookImage(
                      imageUrl: state
                              .books[index].volumeInfo.imageLinks?.thumbnail ??
                          "https://img.icons8.com/pastel-glyph/64/null/error-globe.png",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedCubitFailure) {
          return CustomErrorView(errorMsg: state.errorMsg);
        } else {
          return const CustomLoadingView();
        }
      },
    );
  }
}

import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/utils/assets_manager.dart';
import 'package:book_store/core/widgets/custom_error_view.dart';
import 'package:book_store/core/widgets/custom_loading_view.dart';
import 'package:book_store/features/home/presentation/view_models/similar_books/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/text_style.dart';
import 'book_rating.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(15.0)),
                        ),
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.90,
                            child: Center(
                              child: CustomBookDetailsSection(
                                bookModel: state.books[index],
                                isBottomSheet: true,
                              ),
                            ),
                          );
                        });
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              " ",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorView(errorMsg: state.errorMsg);
        } else {
          return const CustomLoadingView();
        }
      },
    );
  }
}

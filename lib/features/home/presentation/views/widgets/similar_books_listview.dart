import 'package:book_store/core/utils/assets_manager.dart';
import 'package:book_store/core/widgets/custom_error_view.dart';
import 'package:book_store/core/widgets/custom_loading_view.dart';
import 'package:book_store/features/home/presentation/view_models/similar_books/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              itemCount: 6,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  child: CustomBookImage(
                    imageUrl: "https://img.freepik.com/premium-psd/book-cover-mockup_125540-572.jpg",
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

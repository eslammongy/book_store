import 'package:book_store/core/widgets/custom_error_view.dart';
import 'package:book_store/core/widgets/custom_loading_view.dart';
import 'package:book_store/features/home/presentation/view_models/newest_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_listview_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: ((context, index) {
              return BooksListViewItem(
                bookModel: state.books[index],
              );
            }),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorView(errorMsg: state.errorMsg);
        } else {
          return const CustomLoadingView();
        }
      },
    );
  }
}

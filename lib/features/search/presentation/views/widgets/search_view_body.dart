import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/widgets/custom_error_view.dart';
import 'package:book_store/features/home/presentation/views/widgets/books_listview_item.dart';
import 'package:book_store/features/search/presentation/view_models/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants/text_style.dart';
import '../../../../../core/widgets/custom_loading_view.dart';
import 'custom_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomTextField(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Search Result",
              style: AppTextStyle.textStyle18.copyWith(color: greenColor),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(child: SearchResultList())
        ],
      ),
    );
  }
}

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchStateSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: ((context, index) {
              return BooksListViewItem(
                bookModel: state.books[index],
              );
            }),
          );
        } else if (state is SearchStateFailure) {
          return CustomErrorView(errorMsg: state.errorMsg);
        } else {
          return const CustomLoadingView();
        }
      },
    );
  }
}

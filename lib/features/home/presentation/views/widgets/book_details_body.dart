import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/constants/text_style.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'books_action.dart';
import 'custome_appbar_details.dart';
import 'similar_books_listview.dart';

class BooKDetailsBody extends StatelessWidget {
  const BooKDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomDetailsAppBar(),
                  
                  CustomBookDetailsSection(bookModel: bookModel),
                  const Expanded(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You Can also like",
                      style:
                          AppTextStyle.textStyle18.copyWith(color: greenColor),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SimilarBooksListView(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

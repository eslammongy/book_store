import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/constants/text_style.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class CustomBookDetailsSection extends StatelessWidget {
  const CustomBookDetailsSection(
      {super.key, required this.bookModel, this.isBottomSheet = false});
  final BookModel bookModel;
  final bool isBottomSheet;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        isBottomSheet
            ? Container(
                height: 200,
                width: 200,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomBookImage(
                  imageUrl: "${bookModel.volumeInfo.imageLinks?.thumbnail}",
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.20),
                child: CustomBookImage(
                  imageUrl: "${bookModel.volumeInfo.imageLinks?.thumbnail}",
                ),
              ),
        const SizedBox(
          height: 30,
        ),
        Text("${bookModel.volumeInfo.title}",
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyle30.copyWith(
              color: greenColor,
              fontSize: isBottomSheet ? 20 : 24,
              fontWeight: FontWeight.w700,
            )),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(bookModel.volumeInfo.authors?[0] ?? "",
              style: AppTextStyle.textStyle18.copyWith(
                  color: greenColor,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic)),
        ),
        const SizedBox(
          height: 15,
        ),
        BookRatingRow(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        BookActionsButtons(
          bookModel: bookModel,
        ),
      ],
    );
  }
}

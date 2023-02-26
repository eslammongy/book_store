import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/text_style.dart';
import 'book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetails', extra: bookModel);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFB9B9B9),
              offset: Offset(
                1.0,
                1.0,
              ),
              blurRadius: 6.0,
              spreadRadius: -1,
            ), //BoxShadow
          ],
        ),
        height: 120,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                      "https://img.icons8.com/pastel-glyph/64/null/error-globe.png"),
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.textStyle20.copyWith(
                            fontFamily: AppTextStyle.gtSectraFine,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600,
                            color: greenColor)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Opacity(
                    opacity: 0.65,
                    child: Text(bookModel.volumeInfo.authors?[0] ?? " ",
                        style: AppTextStyle.textStyle14.copyWith(
                            color: greenColor, fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text("free",
                          style: AppTextStyle.textStyle20.copyWith(
                              color: greenColor, fontWeight: FontWeight.w900)),
                      const Spacer(),
                      BookRatingRow(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

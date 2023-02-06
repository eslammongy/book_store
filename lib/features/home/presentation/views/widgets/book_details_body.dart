import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/constants/text_style.dart';
import 'package:book_store/core/widgets/custom_button.dart';
import 'package:book_store/features/home/presentation/views/book_details.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custome_appbar_details.dart';

class BooKDetailsBody extends StatelessWidget {
  const BooKDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomDetailsAppBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.20),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("System Design Interview",
                style: AppTextStyle.textStyle30.copyWith(
                  color: greenColor,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text("Alex xue & Sahn lam",
                  style: AppTextStyle.textStyle18.copyWith(
                      color: greenColor,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic)),
            ),
            const SizedBox(
              height: 15,
            ),
            const BookRatingRow(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 15,
            ),
            const BookActionsButtons(),
            Text(
              "You Can also like",
              style: AppTextStyle.textStyle18.copyWith(color: greenColor),
            ),
          ],
        ),
      ),
    );
  }
}

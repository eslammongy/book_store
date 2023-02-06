import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/text_style.dart';
import '../../../../../core/utils/assets_manager.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetails');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
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
              blurRadius: 8.0,
              spreadRadius: 1.0,
            ), //BoxShadow
          ],
        ),
        height: 120,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          AppAssets.testImage,
                        ),
                      )),
                ),
              ),
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
                    child: Text("Harry Potter and the Goblet of fire",
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
                    child: Text("J.K. Rowling",
                        style: AppTextStyle.textStyle14.copyWith(
                            color: greenColor, fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text("19.99 \$",
                          style: AppTextStyle.textStyle20.copyWith(
                              color: greenColor, fontWeight: FontWeight.w900)),
                      const Spacer(),
                      const BookRatingRow(),
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

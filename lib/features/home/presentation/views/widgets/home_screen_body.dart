import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/constants/text_style.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/assets_manager.dart';
import 'custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppBar()),
        const Padding(
          padding: EdgeInsets.only(
            left: 24,
          ),
          child: FeaturedBooksListView(),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Best Seller",
            style: AppTextStyle.textStyle18.copyWith(color: greenColor),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: BestSellerListViewItem(),
        ),
      ],
    );
  }
}

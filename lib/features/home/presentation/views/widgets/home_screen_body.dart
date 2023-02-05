import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/constants/text_style.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'best_seller_listview.dart';
import 'custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: CustomAppBar()),
              const Padding(
                padding: EdgeInsets.only(
                  left: 4,
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
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerList(),
        )
      ],
    );
  }
}

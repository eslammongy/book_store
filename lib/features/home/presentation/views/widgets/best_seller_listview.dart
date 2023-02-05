import 'package:flutter/material.dart';

import 'best_seller_listview_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: ((context, index) {
        return const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 20),
          child: BestSellerListViewItem(),
        );
      }),
    );
  }
}

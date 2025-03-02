import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.only(
            bottom: 20,
            right: kHorizontalPadding,
            left: kHorizontalPadding,
          ),
          child: BestSellerListViewItem(),
        ),
        childCount: 10,
      ),
    );
  }
}

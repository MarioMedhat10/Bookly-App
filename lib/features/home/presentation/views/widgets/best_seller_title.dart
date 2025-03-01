import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerTitle extends StatelessWidget {
  const BestSellerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

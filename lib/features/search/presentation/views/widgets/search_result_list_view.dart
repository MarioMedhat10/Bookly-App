import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 10,
    );
  }
}

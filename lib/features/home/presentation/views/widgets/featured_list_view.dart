import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .29,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            width: 15,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 30 : 0,
                right: index == 9 ? 30 : 0,
              ),
              child: const FeaturedListViewItem(),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          splashRadius: 24,
          icon: const Icon(
            Icons.close,
            size: 28,
          ),
        ),
        // IconButton(
        //   onPressed: () {},
        //   splashRadius: 24,
        //   icon: const Icon(
        //     Icons.shopping_cart_outlined,
        //     size: 25,
        //   ),
        // ),
      ],
    );
  }
}

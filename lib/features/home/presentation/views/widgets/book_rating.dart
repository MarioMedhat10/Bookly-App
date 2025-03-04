import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 20,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '4.8',
              style: Styles.textStyle16
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '(2390)',
              style: Styles.textStyle14.copyWith(
                color: const Color(0xFF87858F),
              ),
            ),
          ],
        )
      ],
    );
  }
}

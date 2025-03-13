import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.borderRadius = 16,
    required this.imageUrl,
  });

  final double borderRadius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 10 / 15,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          // color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}

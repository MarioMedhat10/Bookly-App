import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        borderRadius,
      ),
      child: AspectRatio(
        aspectRatio: 10 / 15,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Image.network(noImageUrl),
          placeholder: (context, url) => const CustomLoadingIndicator(),
        ),
      ),
    );
  }
}

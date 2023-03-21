import 'package:flutter/material.dart';
import 'package:news_app_core/utils/constants.dart';

class ImageWidget extends StatelessWidget {
  final bool clip;
  final String url;
  const ImageWidget({super.key, required this.url, this.clip = true});

  @override
  Widget build(BuildContext context) {
    final image = NetworkImage(url);
    final widget = Image(image: image);
    if (clip) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(circularBorderRadiusValue),
        child: widget,
      );
    }
    return widget;
  }
}

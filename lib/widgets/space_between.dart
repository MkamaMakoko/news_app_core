import 'package:flutter/material.dart';
import 'package:news_app_core/utils/edge_inserts_value.dart';

class SpaceBetween extends StatelessWidget {
  final double times;
  const SpaceBetween({super.key, this.times = 1});

  @override
  Widget build(BuildContext context) {
    final size = edgeInsertsValue(context) * times;
    return SizedBox(
      width: size,
      height: size,
    );
  }
}

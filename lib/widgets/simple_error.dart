import 'package:flutter/material.dart';
import 'package:news_app_core/utils/constants.dart';
import 'package:news_app_core/utils/edge_inserts_value.dart';
import 'package:news_app_core/widgets/space_between.dart';

class SimpleErrorWidget extends StatelessWidget {
  final String? message;
  const SimpleErrorWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(edgeInsertsValue(context)),
      decoration: BoxDecoration(
        color: themeData.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(circularBorderRadiusValue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [
              Icon(Icons.error_outline_rounded),
              SpaceBetween(),
              Text('Unexpected error occurred'),
            ],
          ),
          if (message != null) ...[
            const SpaceBetween(),
            Text(message!),
          ]
        ],
      ),
    );
  }
}

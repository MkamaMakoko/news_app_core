import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_core/objects/news/news.dart';
import 'package:news_app_core/providers/news/providers.dart';
import 'package:news_app_core/utils/edge_inserts_value.dart';
import 'package:news_app_core/widgets/image.dart';
import 'package:news_app_core/widgets/simple_error.dart';
import 'package:news_app_core/widgets/space_between.dart';
part 'news_widget.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, ref, child) => ref.watch(newsListProvider).when(
              data: (news) => ListView.builder(
                shrinkWrap: true,
                itemCount: news.length,
                itemBuilder: (context, index) => _NewsWidget(news[index]),
              ),
              error: (error, _) => const SimpleErrorWidget(
                  message: 'Check your internet connection and try again'),
              loading: () => const Center(child: CircularProgressIndicator()),
            ));
  }
}

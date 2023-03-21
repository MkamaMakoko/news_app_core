part of 'widget.dart';

class _NewsWidget extends StatelessWidget {
  final News news;
  const _NewsWidget(this.news);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;
    final eIValue = edgeInsertsValue(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            //TODO: go to news page
          },
          child: Container(
            padding: EdgeInsets.all(eIValue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(news.validFrom.toString(), style: textTheme.bodySmall),
                  ],
                ),
                Wrap(
                  spacing: eIValue,
                  children: [
                    for (final category in news.categories)
                      ActionChip(
                        label: Text(category.name),
                        onPressed: () {},
                      ),
                  ],
                ),
                Text(news.title, style: textTheme.titleMedium),
                const SpaceBetween(times: .5),
                ImageWidget(url: news.coverImage.url),
                const SpaceBetween(times: .5),
                Text(news.subtitle),
              ],
            ),
          ),
        ),
        Divider(color: themeData.colorScheme.shadow, thickness: eIValue)
      ],
    );
  }
}

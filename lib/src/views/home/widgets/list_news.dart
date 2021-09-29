import 'package:flutter/material.dart';
import 'package:pokedex/src/views/home/widgets/title_news.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'item_news.dart';

class ListNews extends StatelessWidget {
  const ListNews({Key? key, required this.localizations}) : super(key: key);
  final AppLocalizations localizations;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleNews(localizations: localizations),
        ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemNews(index: index);
          },
        ),
      ],
    );
  }
}

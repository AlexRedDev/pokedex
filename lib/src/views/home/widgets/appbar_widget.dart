import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/home/widgets/grid_category_widget.dart';

import 'search_widget.dart';
import 'title_top_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.localizations}) : super(key: key);
  final AppLocalizations localizations;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.white,
      expandedHeight: 450,
      title: TitleTopWidget(localizations: localizations, context: context),
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SearchWidget(localizations: localizations, context: context),
            GridCategoryWidget(localizations: localizations),
          ],
        ),
      ),
    );
  }
}

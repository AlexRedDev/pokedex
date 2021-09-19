import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/home/widgets/grid_category.dart';

import 'search.dart';
import 'title_top.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key, required this.localizations}) : super(key: key);
  final AppLocalizations localizations;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.white,
      expandedHeight: 450,
      title: TitleTop(localizations: localizations, context: context),
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Search(localizations: localizations, context: context),
            GridCategory(localizations: localizations),
          ],
        ),
      ),
    );
  }
}

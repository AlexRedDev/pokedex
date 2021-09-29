import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/home/widgets/tiitle_app.dart';
import 'package:pokedex/src/views/home/widgets/grid_category.dart';
import 'package:pokedex/src/views/home/widgets/search.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key, required this.localizations}) : super(key: key);
  final AppLocalizations localizations;
  @override
  Widget build(BuildContext context) {
    final appHeight = MediaQuery.of(context).size.height / 2;
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.white,
      expandedHeight: appHeight,
      title: TitleApp(localizations: localizations),
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

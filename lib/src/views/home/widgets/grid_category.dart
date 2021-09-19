import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/home/widgets/item_category_widget.Dart';

class GridCategory extends StatelessWidget {
  const GridCategory({Key? key, required this.localizations})
      : super(key: key);
  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      childAspectRatio: 2.5,
      children: [
        ItemCategoryWidget(
            context: context,
            title: localizations.pokedex,
            color: Colors.green.shade400),
        ItemCategoryWidget(
            context: context,
            title: localizations.moves,
            color: Colors.red.shade400),
        ItemCategoryWidget(
            context: context,
            title: localizations.abilities,
            color: Colors.blue.shade400),
        ItemCategoryWidget(
            context: context,
            title: localizations.items,
            color: Colors.yellow.shade400),
        ItemCategoryWidget(
            context: context,
            title: localizations.locations,
            color: Colors.purple.shade400),
        ItemCategoryWidget(
            context: context,
            title: localizations.typeCharts,
            color: Colors.brown.shade400),
      ],
    );
  }
}

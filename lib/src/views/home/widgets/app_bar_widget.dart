import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';
import 'package:pokedex/src/views/home/widgets/grid_category_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_widget.dart';
import 'title_top_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.localizations}) : super(key: key);
  final AppLocalizations localizations;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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

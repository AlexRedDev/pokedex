import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/home/widgets/appbar.dart' as custom;
import 'package:pokedex/src/views/home/widgets/list_news.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late AppLocalizations localizations = AppLocalizations.of(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          custom.AppBar(localizations: localizations),
          SliverToBoxAdapter(
            child: ListNews(localizations: localizations),
          ),
        ],
      ),
    );
  }
}

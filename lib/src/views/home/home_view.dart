import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/home/widgets/app_bar_widget.dart';
import 'package:pokedex/src/views/home/widgets/list_news_widget.dart';
import 'package:pokedex/src/views/home/widgets/title_news_widget.dart';

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
          AppBarWidget(localizations: localizations),
          SliverToBoxAdapter(child: bodyWidget()),
        ],
      ),
    );
  }

  Widget bodyWidget() {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(children: [
        TitleNewsWidget(localizations: localizations),
        const ListNewsWidget(),
      ]),
    );
  }
}

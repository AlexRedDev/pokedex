import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/category/widgets/grid_item.dart';
import 'package:pokedex/src/views/category/widgets/appbar.dart' as custom;

class CategoryPage extends Page {
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(settings: this, builder: (_) => CategoryView());
    // return PageRouteBuilder(
    //   settings: this,
    //   pageBuilder: (context, animation, animation2) {
    //     final tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero);
    //     final curveTween = CurveTween(curve: Curves.easeInOut);
    //     return SlideTransition(
    //       position: animation.drive(curveTween).drive(tween),
    //       child: const CategoryView(),
    //     );
    //   },
    // );
  }
}

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  late AppLocalizations localization = AppLocalizations.of(context);
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      endDrawer: Drawer(
        child: ListView.builder(
            itemBuilder: (_, index) => ListTile(
                  leading: Text('Index $index'),
                )),
      ),
      body: CustomScrollView(
        slivers: [
          custom.AppBar(
              localizations: localization,
              openEndDrawer: () => _drawerKey.currentState?.openEndDrawer()),
          const SliverToBoxAdapter(
            child: GridItem(),
          ),
        ],
      ),
    );
  }
}

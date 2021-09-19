import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';
import 'package:pokedex/src/views/widgets/pokeball.dart';

class CategoryPage extends Page {
  @override
  Route createRoute(BuildContext context) {
    // return MaterialPageRoute(settings: this, builder: (_) => CategoryView());
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        final tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero);
        final curveTween = CurveTween(curve: Curves.easeInOut);
        return SlideTransition(
          position: animation.drive(curveTween).drive(tween),
          child: const CategoryView(),
        );
      },
    );
  }
}

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  late AppLocalizations localization = AppLocalizations.of(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            leading: IconButton(
              onPressed: () => context.read<AppNavigationCubit>().showHome(),
              icon: Icon(Icons.arrow_back),
            ),
            title: Text(localization.pokedex),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.vertical_split_rounded),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: PokeBallWidget(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

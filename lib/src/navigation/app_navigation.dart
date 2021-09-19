import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';
import 'package:pokedex/src/views/category/category_view.dart';
import 'package:pokedex/src/views/home/home_view.dart';
import 'package:pokedex/src/views/news/news_view.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationCubit, AppNavigationState>(
      builder: (context, state) {
        return Navigator(
          pages: [
            if (state == AppNavigationState.home)
              const MaterialPage(child: HomeView()),
            if (state == AppNavigationState.category) CategoryPage(),
            if (state == AppNavigationState.news)
              MaterialPage(key: ValueKey('NewsView'), child: NewsView()),
          ],
          onPopPage: (route, result) => route.didPop(route),
        );
      },
    );
  }
}

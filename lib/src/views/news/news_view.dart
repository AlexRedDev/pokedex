import 'package:flutter/material.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';
import 'package:provider/src/provider.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.read<AppNavigationCubit>().showHome(),
        ),
      ),
    );
  }
}

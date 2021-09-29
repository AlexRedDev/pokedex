import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
    required this.localizations,
    required this.openEndDrawer,
  }) : super(key: key);

  final AppLocalizations localizations;
  final Function openEndDrawer;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white30,
      leading: IconButton(
        onPressed: () => context.read<AppNavigationCubit>().showHome(),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: Text(
        localizations.pokedex,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () => openEndDrawer(),
          icon: const Icon(
            Icons.vertical_split_rounded,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

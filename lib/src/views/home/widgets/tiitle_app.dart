import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/views/widgets/pokeball.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({
    Key? key,
    required this.localizations,
  }) : super(key: key);

  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          localizations.appTitle,
          textAlign: TextAlign.left,
          maxLines: 2,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        const PokeBall(
          color: Colors.red,
          opacity: 1,
          size: Size(35, 35),
        ),
      ],
    );
  }
}

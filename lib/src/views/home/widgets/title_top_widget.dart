import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TitleTopWidget extends StatelessWidget {
  const TitleTopWidget({
    Key? key,
    required this.localizations,
    required this.context,
  }) : super(key: key);

  final AppLocalizations localizations;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      localizations.appTitle,
      textAlign: TextAlign.left,
      maxLines: 2,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TitleNewsWidget extends StatelessWidget {
  const TitleNewsWidget({
    Key? key,
    required this.localizations,
  }) : super(key: key);

  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Pokemon News',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: Text(localizations.viewAll),
          )
        ],
      ),
    );
  }
}

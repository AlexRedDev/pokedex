import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.localizations,
    required this.context,
  }) : super(key: key);

  final AppLocalizations localizations;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 244, 245, 245),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, size: 28),
              ),
            ),
            Expanded(
              flex: 5,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: localizations.searchHintText),
              ),
            )
          ],
        ),
      ),
    );
  }
}

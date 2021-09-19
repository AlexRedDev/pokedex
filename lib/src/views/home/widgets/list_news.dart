import 'package:flutter/material.dart';

import 'item_news.dart';

class ListNews extends StatelessWidget {
  const ListNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ItemNews(index: index);
      },
    );
  }
}

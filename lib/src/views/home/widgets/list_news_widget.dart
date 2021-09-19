import 'package:flutter/material.dart';

import 'item_news_widget.dart';

class ListNewsWidget extends StatelessWidget {
  const ListNewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemNewsWidget(index: index);
        },
      ),
    );
  }
}

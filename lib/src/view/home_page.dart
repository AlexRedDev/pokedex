import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/src/widgets/pokeball.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          appBar(context),
          SliverToBoxAdapter(child: container()),
        ],
      ),
    );
  }

  SliverAppBar appBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 420,
      floating: true,
      title: toptitle(context),
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _search(context),
            category(),
          ],
        ),
      ),
    );
  }

  Widget toptitle(BuildContext context) {
    return Text(
      AppLocalizations.of(context).searchHintText,
      textAlign: TextAlign.left,
      maxLines: 2,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget container() {
    return Column(
      children: [titleNews(), news()],
    );
  }

  GridView category() {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: 2.5,
      children: [
        itemCategory(title: 'Pokedex', color: Colors.green.shade400),
        itemCategory(title: 'Moves', color: Colors.red.shade400),
        itemCategory(title: 'Abilities', color: Colors.blue.shade400),
        itemCategory(title: 'Items', color: Colors.yellow.shade400),
        itemCategory(title: 'Location', color: Colors.purple.shade400),
        itemCategory(title: 'Type Charts', color: Colors.brown.shade400),
      ],
    );
  }

  ListView news() {
    return ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return itemNews(index);
        });
  }

  Container titleNews() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Pokemon News',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: () {}, child: Text('View All'))
        ],
      ),
    );
  }

  Container itemNews(int index) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Pokem Runble Rush Arrivers',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text('15 May, 2019',
                  style: TextStyle(fontWeight: FontWeight.w300))
            ],
          ),
          Container(
            height: 80,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.pinkAccent,
            ),
            child: Center(child: Text(index.toString())),
          )
        ],
      ),
    );
  }

  Container itemCategory({required String title, required Color color}) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              PokeBallWidget(
                size: Size(60, 60),
                color: Colors.white,
              ),
            ],
          ),
        ));
  }

  Widget _search(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
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
                    hintText: AppLocalizations.of(context).searchHintText),
              ),
            )
          ],
        ),
      ),
    );
  }
}

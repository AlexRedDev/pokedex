import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';
import 'package:pokedex/src/views/widgets/pokeball.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBarHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [AppBar(appBarHeight, context)],
      ),
    );
  }

  SliverAppBar AppBar(double appBarHeight, BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.greenAccent,
      expandedHeight: appBarHeight / 2.6,
      leading: IconButton(
        onPressed: () => context.read<AppNavigationCubit>().showCategory(),
        icon: const Icon(Icons.arrow_back),
      ),
      title: appTitle(),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const <StretchMode>[
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
        ],
        background: Column(
          children: [
            Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) => pokemAbility(),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        'Seed Pokemon',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            CarouselSlider(
              items: [
                imageBulb(),
              ],
              options: CarouselOptions(aspectRatio: 2.2),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size(50, 50),
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('About'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Base State'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Evolution'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Moves'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text appTitle() {
    return Text(
      'Bulbasaur',
      style: TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget pokemAbility() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(255, 255, 255, 0.4)),
        child: const Center(
            child: Text(
          'Grass',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  LimitedBox imageBulb() {
    return LimitedBox(
      maxHeight: 120,
      maxWidth: 120,
      child: Stack(alignment: AlignmentDirectional.center, children: [
        PokeBall(
          color: Colors.white,
          size: Size(300, 300),
        ),
        Image.network('http://surl.li/agnor')
      ]),
    );
  }
}

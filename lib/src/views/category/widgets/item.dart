import 'package:flutter/material.dart';
import 'package:pokedex/src/views/widgets/pokeball.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.fnavigation,
      this.title = '',
      this.itemsInfo = const [],
      this.imageUrl = '',
      this.color = Colors.greenAccent})
      : super(key: key);
  final Function(BuildContext) fnavigation;
  final String? title;
  final List<String>? itemsInfo;
  final String? imageUrl;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => fnavigation(context),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 8,
              spreadRadius: 0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: itemImage(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Charmander',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          itemInformaiton(),
                          itemInformaiton(),
                          itemInformaiton(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemInformaiton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.5),
            borderRadius: BorderRadius.circular(25)),
        child: Text(
          'Fire',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Stack itemImage() {
    return Stack(children: [
      const PokeBall(
        color: Colors.white,
        size: Size(90, 90),
      ),
      Image.network(
        'http://surl.li/agnor',
        height: 90,
        width: 90,
      ),
    ]);
  }
}

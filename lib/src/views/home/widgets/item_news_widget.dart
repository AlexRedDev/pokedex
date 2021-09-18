import 'package:flutter/material.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';
import 'package:provider/src/provider.dart';

class ItemNewsWidget extends StatelessWidget {
  const ItemNewsWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<AppNavigationCubit>().showCategory(),
      child: Container(
        padding: const EdgeInsets.all(20.0),
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
      ),
    );
  }
}

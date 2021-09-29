import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/src/navigation/app_navigation_cubit.dart';
import 'package:pokedex/src/views/widgets/pokeball.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    Key? key,
    required this.context,
    required this.title,
    required this.color,
  }) : super(key: key);

  final BuildContext context;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<AppNavigationCubit>().showCategory(),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 8,
              offset: const Offset(0, 2),
            )
          ],
        ),
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
              const PokeBall(
                size: Size(40, 40),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ruralclap/models/category_model.dart';
import 'package:ruralclap/util/constants.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  const CategoryTile({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Constants.workImage,
              height: 68,
              width: 68,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              category.name,
              textScaler: TextScaler.noScaling,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

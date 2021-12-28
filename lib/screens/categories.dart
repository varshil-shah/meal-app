import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/widgets/category_item.dart';

class CatogriesScreen extends StatelessWidget {
  const CatogriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DeliMeal")),
      body: GridView(
        padding: const EdgeInsets.all(20.0),
        children: DUMMY_CATEGORIES
            .map(
              (categoryData) => CategoryItem(
                title: categoryData.title,
                color: categoryData.color,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          maxCrossAxisExtent: 200.0,
        ),
      ),
    );
  }
}

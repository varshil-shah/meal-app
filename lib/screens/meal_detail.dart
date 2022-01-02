import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/background.dart';

class MealDetail extends StatelessWidget {
  static const String routeName = "/meal-detail";

  final Function(String mealId) toggleFavourite;
  final Function(String mealId) isFavouriteMeal;

  final availableColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
  ];

  MealDetail({
    Key? key,
    required this.toggleFavourite,
    required this.isFavouriteMeal,
  }) : super(key: key);

  Container _buildSectionTitle(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 24.0,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container _buildList({double height = 230.0, required Widget child}) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final Meal selectedMeal =
        DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 260,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _buildSectionTitle("Ingredients"),
            _buildList(
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  final currentColor =
                      availableColors[index % availableColors.length];
                  return GreyBackground(
                    borderRadius: 3.0,
                    horizontalPadding: 0.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: currentColor,
                        child: Text("#${index + 1}"),
                        foregroundColor: Colors.white,
                      ),
                      title: Text(
                        selectedMeal.ingredients[index],
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  );
                },
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const Divider(color: Colors.grey),
            ),
            _buildSectionTitle("Steps"),
            _buildList(
              height: 280,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  final currentColor =
                      availableColors[index % availableColors.length];
                  return GreyBackground(
                    horizontalPadding: 0.0,
                    borderRadius: 3.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: currentColor,
                        foregroundColor: Colors.white,
                        child: Text("#${index + 1}"),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                  );
                },
                itemCount: selectedMeal.steps.length,
              ),
            ),
            const SizedBox(height: 20.0)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toggleFavourite(mealId),
        child: Icon(isFavouriteMeal(mealId) ? Icons.star : Icons.star_outline),
      ),
    );
  }
}

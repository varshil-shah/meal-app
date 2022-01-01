import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/category_meals.dart';
import 'package:meal_app/screens/meal_detail.dart';
import 'package:meal_app/screens/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeal',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline1: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        "/": (ctx) => const TabsScreen(),
        CategoryMeals.routeName: (ctx) => const CategoryMeals(),
        MealDetail.routeName: (ctx) => MealDetail(),
      },
      onUnknownRoute: (settings) {
        debugPrint(settings.name);
        debugPrint(settings.arguments.toString());
        return MaterialPageRoute(builder: (ctx) => const CatogriesScreen());
      },
    );
  }
}

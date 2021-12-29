import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const String routeName = "/meal-detail";
  const MealDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: const Center(child: Text("The meal!")),
    );
  }
}

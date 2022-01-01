import 'package:flutter/material.dart';
import 'package:meal_app/widgets/drawer.dart';

class Filter extends StatelessWidget {
  static const routeName = "/filters";

  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Settings"),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text("Filter screen!"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meal_app/widgets/background.dart';
import 'package:meal_app/widgets/drawer.dart';

class Filter extends StatefulWidget {
  static const routeName = "/filters";

  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _isGultenFree = false;
  bool _isVegetarain = false;
  bool _isVegan = false;
  bool _isLactoseFree = false;

  Widget _buildSwitchListTile(String title, String subtitle, bool currentValue,
      Function(bool onchange) callback) {
    return GreyBackground(
      horizontalMargin: 10.0,
      horizontalPadding: 0.0,
      borderRadius: 5.0,
      child: SwitchListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 17.0,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 15.0,
          ),
        ),
        value: currentValue,
        onChanged: callback,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Settings"),
      ),
      drawer: const MainDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Adjust your meal selection",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _buildSwitchListTile("Gluten-free",
                  "Only include gluten free meals", _isGultenFree, (onchange) {
                setState(() {
                  _isGultenFree = onchange;
                });
              }),
              _buildSwitchListTile(
                  "Lactose-free",
                  "Only include lactose free meals",
                  _isLactoseFree, (onchange) {
                setState(() {
                  _isLactoseFree = onchange;
                });
              }),
              _buildSwitchListTile(
                  "Vegetarian", "Only include vegetarian meals", _isVegetarain,
                  (onchange) {
                setState(() {
                  _isVegetarain = onchange;
                });
              }),
              _buildSwitchListTile(
                  "Vegen", "Only include vegen meals", _isVegan, (onchange) {
                setState(() {
                  _isVegan = onchange;
                });
              }),
            ],
          )),
        ],
      ),
    );
  }
}

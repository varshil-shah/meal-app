import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/favourites.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meals"),
          bottom: TabBar(
            onTap: (_) {},
            tabs: const [
              Tab(
                icon: Icon(Icons.category),
                text: "Categories",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favourites",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [CatogriesScreen(), Favourites()],
        ),
      ),
      length: 2,
    );
  }
}

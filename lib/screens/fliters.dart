import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  static const routeName = "/filters";

  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Filter screen!"),
      ),
    );
  }
}

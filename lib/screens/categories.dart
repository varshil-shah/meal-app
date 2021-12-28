import 'package:flutter/material.dart';

class CatogriesScreen extends StatelessWidget {
  const CatogriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[],
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        maxCrossAxisExtent: 200.0,
      ),
    );
  }
}

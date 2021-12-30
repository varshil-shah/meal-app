import 'package:flutter/material.dart';

class GreyBackground extends StatelessWidget {
  final Widget child;
  final double verticalPadding;
  final double horizontalPadding;
  final double verticalMargin;
  final double horizontalMargin;
  final double borderRadius;

  const GreyBackground(
      {Key? key,
      required this.child,
      this.horizontalMargin = 0.0,
      this.verticalPadding = 3.0,
      this.horizontalPadding = 10.0,
      this.verticalMargin = 5.0,
      this.borderRadius = 25.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      child: child,
    );
  }
}

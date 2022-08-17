import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final EdgeInsets? padding;
  final Widget? child;
  final Color? backgroundColor;

  const AppContainer({
    Key? key,
    this.padding,
    this.child,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: child,
      color: backgroundColor,
    );
  }
}

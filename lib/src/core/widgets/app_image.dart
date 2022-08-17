import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const AppImage({
    Key? key,
    required this.path,
    this.width,
    this.height,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Image.asset(
        path,
        height: height,
        width: width,
        fit: fit,
      );
}

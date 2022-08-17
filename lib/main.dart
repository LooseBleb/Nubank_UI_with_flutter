import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_training/src/app_module.dart';
import 'package:flutter_training/src/app_widget.dart';

void main() {
  Modular.to.addListener(() => debugPrint('Actual route: ' + Modular.to.path));

  ModularApp app = ModularApp(module: AppModule(), child: const AppWidget());

  runApp(app);
}

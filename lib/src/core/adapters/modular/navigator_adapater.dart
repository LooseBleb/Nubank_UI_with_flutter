import 'package:flutter_modular/flutter_modular.dart';

class ModularNavigatorAdapter {
  static void navigate(String route) => Modular.to.navigate(route);
  static void pushNamed(String route) => Modular.to.pushNamed(route);
}

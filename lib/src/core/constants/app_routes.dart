import 'package:flutter_modular/flutter_modular.dart';

import '../adapters/modular/modular.dart';

class AppRoutes {
  static String initial = Modular.initialRoute;
  static String auth = ModularRouteAdapter.create('auth');
  static String home = ModularRouteAdapter.create('home');
  static String card = ModularRouteAdapter.create('card');
}

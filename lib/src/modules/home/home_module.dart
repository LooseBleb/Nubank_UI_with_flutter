import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_training/src/core/constants/constants.dart';
import 'package:flutter_training/src/modules/auth/views/login_page.dart';
import 'package:flutter_training/src/modules/home/views/card_details_page.dart';
import 'package:flutter_training/src/modules/home/views/home_page.dart';

class HomeModule extends Module {
  final List<ModularRoute> customRoutes = [
    ChildRoute(AppRoutes.initial, child: (_, __) => const HomePage()),
    ChildRoute(AppRoutes.card, child: (_, __) => const CardPage()),
  ];

  @override
  List<ModularRoute> get routes => customRoutes;
}

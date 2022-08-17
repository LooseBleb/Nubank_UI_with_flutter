import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_training/src/core/constants/app_routes.dart';
import 'package:flutter_training/src/modules/auth/auth_module.dart';
import 'package:flutter_training/src/modules/home/home_module.dart';
import 'package:flutter_training/src/splash_page.dart';

class AppModule extends Module {
  final List<ModularRoute> customRoutes = [
    ChildRoute(AppRoutes.initial, child: (_, __) => SplashPage()),
    ModuleRoute(AppRoutes.auth, module: AuthModule()),
    ModuleRoute(AppRoutes.home, module: HomeModule()),
  ];

  @override
  List<ModularRoute> get routes => customRoutes;
}

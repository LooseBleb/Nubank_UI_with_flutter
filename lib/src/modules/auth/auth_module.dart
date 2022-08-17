import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_training/src/core/constants/constants.dart';
import 'package:flutter_training/src/modules/auth/views/login_page.dart';

class AuthModule extends Module {
  final List<ModularRoute> customRoutes = [
    ChildRoute(AppRoutes.initial, child: (_, __) => const LoginPage()),
    // ChildRoute(AuthRoutes.forgotPassword,
    //     child: (_, __) => const ForgotPasswordPage()),
    // ModuleRoute(AppRoutes.home, module: HomeModule()),
  ];

  @override
  List<ModularRoute> get routes => customRoutes;
}

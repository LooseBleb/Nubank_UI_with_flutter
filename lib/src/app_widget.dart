import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/constants/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => buildModularApp();

  Widget buildModularApp() => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        builder: ensureUse24HourFormat,
        theme: buildAppTheme(),
      );

  Widget ensureUse24HourFormat(BuildContext context, Widget? child) =>
      MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
        child: child as Widget,
      );

  ThemeData buildAppTheme() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Roboto',
        inputDecorationTheme:
            const InputDecorationTheme(labelStyle: TextStyle(fontSize: 14)),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 28),
          headline2: TextStyle(fontSize: 26),
          headline3: TextStyle(fontSize: 22),
          headline4: TextStyle(fontSize: 20),
          headline5: TextStyle(fontSize: 18),
          headline6: TextStyle(fontSize: 16),
          bodyText1: TextStyle(fontSize: 14),
          bodyText2: TextStyle(fontSize: 12),
        ),
      );
}

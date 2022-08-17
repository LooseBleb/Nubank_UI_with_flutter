import '../adapters/modular/modular.dart';

class AppNavigator {
  static void navigateTo(String route) =>
      ModularNavigatorAdapter.navigate(route);
  static void pushTo(String route) => ModularNavigatorAdapter.pushNamed(route);
}

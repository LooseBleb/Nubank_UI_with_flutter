import '../../../core/constants/app_navigator.dart';

class AuthNavigator {
  static void pushTo(String route) => AppNavigator.pushTo('.$route');
}

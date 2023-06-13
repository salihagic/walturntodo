import 'package:walturntodo/_all.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(settings: settings, builder: (_) => _onGenerateRoute(settings));
  }

  static Widget _onGenerateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case AppNavigation.route:
          return const AppNavigation();
        default:
          return root;
      }
    } catch (e) {
      debugPrint(e.toString());

      return root;
    }
  }

  static Widget get root => const AppNavigation();
  static String get rootRoute => AppNavigation.route;
}

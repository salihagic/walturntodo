import 'package:walturntodo/_all.dart';

extension AppNavigatorX on NavigatorState {
  void pushPage(Widget page) => push(MaterialPageRoute(builder: (_) => page));
}

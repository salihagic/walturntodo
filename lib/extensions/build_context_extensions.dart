import 'package:walturntodo/_all.dart';

extension AppBuildContextX on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
  void unfocus() => FocusScope.of(this).unfocus();
}

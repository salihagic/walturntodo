import 'package:walturntodo/_all.dart';

extension IToastBuildContextX on BuildContext {
  IToast get toast => services.get<IToast>();
}

import 'package:walturntodo/_all.dart';

extension L10nBuildContextX on BuildContext {
  AppLocalizations get translations => AppLocalizations.of(this)!;
}

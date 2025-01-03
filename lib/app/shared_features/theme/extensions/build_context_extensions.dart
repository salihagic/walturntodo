import 'package:walturntodo/_all.dart';

extension AppThemeBuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppThemeData get appTheme => Theme.of(this).extension<AppThemeData>()!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;

  Orientation get orientation => mediaQuery.orientation;

  bool get isLandscape => (orientation == Orientation.landscape);
  bool get isPortrait => (orientation == Orientation.portrait);

  bool get isSmallScreen => (screenWidth <= AppBreakpoint.small);
  bool get isMediumScreen => (screenWidth <= AppBreakpoint.medium &&
      screenWidth <= AppBreakpoint.large &&
      !isSmallScreen);
  bool get isLargeScreen =>
      (screenWidth <= AppBreakpoint.large && !isSmallScreen && !isMediumScreen);
}

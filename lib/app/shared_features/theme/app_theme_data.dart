import 'package:walturntodo/_all.dart';

class AppThemeData implements ThemeExtension<AppThemeData> {
  final Color neutral1;
  final Color neutral2;
  final Color neutral3;
  final Color neutral4;
  final Color neutral5;
  final Color neutral6;
  final Color neutral7;
  final Color neutral8;
  final Color neutral9;
  final Color neutral10;
  final Color neutral11;
  final Color neutral12;
  final Color scaffoldBackgroundColorDark;
  final Color buttonColor;
  final Color successColor;
  final Color errorColor;
  final Color warningColor;
  final Color disabledColor;

  AppThemeData({
    required this.neutral1,
    required this.neutral2,
    required this.neutral3,
    required this.neutral4,
    required this.neutral5,
    required this.neutral6,
    required this.neutral7,
    required this.neutral8,
    required this.neutral9,
    required this.neutral10,
    required this.neutral11,
    required this.neutral12,
    required this.scaffoldBackgroundColorDark,
    required this.buttonColor,
    required this.successColor,
    required this.errorColor,
    required this.warningColor,
    required this.disabledColor,
  });

  factory AppThemeData.fromLocale(
    Locale locale, {
    required Color neutral1,
    required Color neutral2,
    required Color neutral3,
    required Color neutral4,
    required Color neutral5,
    required Color neutral6,
    required Color neutral7,
    required Color neutral8,
    required Color neutral9,
    required Color neutral10,
    required Color neutral11,
    required Color neutral12,
    required Color scaffoldBackgroundColorDark,
    required Color buttonColor,
    required Color successColor,
    required Color errorColor,
    required Color warningColor,
    required Color disabledColor,
  }) {
    return AppThemeData(
      neutral1: neutral1,
      neutral2: neutral2,
      neutral3: neutral3,
      neutral4: neutral4,
      neutral5: neutral5,
      neutral6: neutral6,
      neutral7: neutral7,
      neutral8: neutral8,
      neutral9: neutral9,
      neutral10: neutral10,
      neutral11: neutral11,
      neutral12: neutral12,
      scaffoldBackgroundColorDark: scaffoldBackgroundColorDark,
      buttonColor: buttonColor,
      successColor: successColor,
      errorColor: errorColor,
      warningColor: warningColor,
      disabledColor: disabledColor,
    );
  }

  @override
  ThemeExtension<AppThemeData> copyWith({
    Color? neutral1,
    Color? neutral2,
    Color? neutral3,
    Color? neutral4,
    Color? neutral5,
    Color? neutral6,
    Color? neutral7,
    Color? neutral8,
    Color? neutral9,
    Color? neutral10,
    Color? neutral11,
    Color? neutral12,
    Color? scaffoldBackgroundColorDark,
    Color? buttonColor,
    Color? successColor,
    Color? errorColor,
    Color? warningColor,
    Color? disabledColor,
  }) {
    return AppThemeData(
      neutral1: neutral1 ?? this.neutral1,
      neutral2: neutral2 ?? this.neutral2,
      neutral3: neutral3 ?? this.neutral3,
      neutral4: neutral4 ?? this.neutral4,
      neutral5: neutral5 ?? this.neutral5,
      neutral6: neutral6 ?? this.neutral6,
      neutral7: neutral7 ?? this.neutral7,
      neutral8: neutral8 ?? this.neutral8,
      neutral9: neutral9 ?? this.neutral9,
      neutral10: neutral10 ?? this.neutral10,
      neutral11: neutral11 ?? this.neutral11,
      neutral12: neutral12 ?? this.neutral12,
      scaffoldBackgroundColorDark:
          scaffoldBackgroundColorDark ?? this.scaffoldBackgroundColorDark,
      buttonColor: buttonColor ?? this.buttonColor,
      successColor: successColor ?? this.successColor,
      errorColor: errorColor ?? this.errorColor,
      warningColor: warningColor ?? this.warningColor,
      disabledColor: disabledColor ?? this.disabledColor,
    );
  }

  @override
  ThemeExtension<AppThemeData> lerp(
    ThemeExtension<AppThemeData>? other,
    double t,
  ) {
    if (other is! AppThemeData) {
      return this;
    }

    return AppThemeData(
      neutral1: other.neutral1,
      neutral2: other.neutral2,
      neutral3: other.neutral3,
      neutral4: other.neutral4,
      neutral5: other.neutral5,
      neutral6: other.neutral6,
      neutral7: other.neutral7,
      neutral8: other.neutral8,
      neutral9: other.neutral9,
      neutral10: other.neutral10,
      neutral11: other.neutral11,
      neutral12: other.neutral12,
      scaffoldBackgroundColorDark: other.scaffoldBackgroundColorDark,
      buttonColor: other.buttonColor,
      successColor: other.successColor,
      errorColor: other.errorColor,
      warningColor: other.warningColor,
      disabledColor: other.disabledColor,
    );
  }

  @override
  // ignore: no-object-declaration
  Object get type => AppThemeData;
}

import 'package:walturntodo/_all.dart';

const _smallTextScaleFactor = 0.90;
const _mediumTextScaleFactor = 0.95;
const primaryHex = 0xFFCDAB6A;
const primaryColor = Color(primaryHex);
const successColor = Colors.green;
const errorColor = Colors.red;
const warningColor = Colors.orange;
const disabledColor = Colors.grey;

class AppTheme {
  static String get defaultFont => AppFonts.googleSans;

  static ThemeData get large {
    return ThemeData(
      extensions: [
        AppThemeData(
          neutral1: const Color(0xFF2D2D2D),
          neutral2: const Color(0xFF7E7E7E),
          neutral3: const Color(0xFFD9D9D9),
          neutral4: const Color(0xFF1B1B1B),
          neutral5: const Color(0xFF404040),
          neutral6: const Color(0xFF2C2C2C),
          neutral7: const Color(0xFF969696),
          neutral8: const Color(0xFFFFFFFE),
          neutral9: const Color(0xFF383838),
          neutral10: const Color(0xFFC5C5C5),
          neutral11: const Color(0xFF6d6d6d),
          neutral12: const Color(0xFFE5E5E5),
          scaffoldBackgroundColorDark: Colors.black,
          buttonColor: Colors.black,
          successColor: successColor,
          errorColor: errorColor,
          warningColor: warningColor,
          disabledColor: disabledColor,
        ),
      ],
      primaryColor: primaryColor,
      splashColor: primaryColor.withOpacity(0.3),
      primarySwatch: const MaterialColor(
        primaryHex,
        {
          50: primaryColor,
          100: primaryColor,
          200: primaryColor,
          300: primaryColor,
          400: primaryColor,
          500: primaryColor,
          600: primaryColor,
          700: primaryColor,
          800: primaryColor,
          900: primaryColor,
        },
      ),
      fontFamily: AppFonts.googleSans,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF000000),
        selectedItemColor: primaryColor,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        elevation: 0,
        unselectedItemColor: Color(0xFF000000),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.black,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Color(0xFF000000),
      ),
      textTheme: _textTheme(Colors.black87),
      snackBarTheme: SnackBarThemeData(
        contentTextStyle: TextStyle(
          fontFamily: defaultFont,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: defaultFont,
        ),
        helperStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: defaultFont,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: defaultFont,
        ),
        errorStyle: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: defaultFont,
        ),
        isDense: false,
        contentPadding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 0,
          right: 0,
        ),
        isCollapsed: false,
        prefixStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: defaultFont,
        ),
        suffixStyle: TextStyle(
          color: Colors.white,
          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: defaultFont,
        ),
        counterStyle: TextStyle(
          color: Colors.white,
          fontSize: null,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: defaultFont,
        ),
        filled: false,
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: disabledColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }

  static ThemeData get largeDark {
    return large.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF1b1b1b),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF1b1b1b),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 34,
          fontFamily: defaultFont,
        ),
      ),
      textTheme: _textTheme(Colors.white),
    );
  }

  static ThemeData get small {
    return large.copyWith(
      textTheme: _smallTextTheme(Colors.black87),
    );
  }

  static ThemeData get smallDark {
    return largeDark.copyWith(
      textTheme: _smallTextTheme(Colors.white),
    );
  }

  static ThemeData get medium {
    return large.copyWith(
      textTheme: _mediumTextTheme(Colors.black87),
    );
  }

  static ThemeData get mediumDark {
    return largeDark.copyWith(
      textTheme: _mediumTextTheme(Colors.white),
    );
  }

  static TextTheme _textTheme(Color color) {
    final baseTextStyle = TextStyle(
      color: color,
      fontFamily: defaultFont,
      fontWeight: AppFontWeight.regular,
    );

    return TextTheme(
      displayLarge: baseTextStyle.copyWith(
        fontSize: 56,
        fontWeight: AppFontWeight.medium,
      ),
      displayMedium: baseTextStyle.copyWith(
        fontSize: 30,
      ),
      displaySmall: baseTextStyle.copyWith(
        fontSize: 24,
      ),
      headlineMedium: baseTextStyle.copyWith(
        fontSize: 22,
        fontWeight: AppFontWeight.bold,
      ),
      headlineSmall: baseTextStyle.copyWith(
        fontSize: 22,
        fontWeight: AppFontWeight.medium,
      ),
      titleLarge: baseTextStyle.copyWith(
        fontSize: 22,
        fontWeight: AppFontWeight.bold,
      ),
      titleMedium: baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: AppFontWeight.bold,
      ),
      titleSmall: baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: AppFontWeight.bold,
      ),
      bodyLarge: baseTextStyle.copyWith(
        fontSize: 18,
        fontWeight: AppFontWeight.medium,
      ),
      bodyMedium: baseTextStyle.copyWith(
        fontSize: 16,
      ),
      bodySmall: baseTextStyle.copyWith(
        fontSize: 14,
      ),
      labelSmall: baseTextStyle.copyWith(
        fontSize: 16,
      ),
      labelLarge: baseTextStyle.copyWith(
        fontSize: 18,
        fontWeight: AppFontWeight.medium,
      ),
    );
  }

  static TextTheme _smallTextTheme(Color color) {
    return TextTheme(
      displayLarge: _textTheme(color).displayLarge?.copyWith(
            fontSize: _textTheme(color).displayLarge!.fontSize! *
                _smallTextScaleFactor,
          ),
      displayMedium: _textTheme(color).displayMedium?.copyWith(
            fontSize: _textTheme(color).displayMedium!.fontSize! *
                _smallTextScaleFactor,
          ),
      displaySmall: _textTheme(color).displaySmall?.copyWith(
            fontSize: _textTheme(color).displaySmall!.fontSize! *
                _smallTextScaleFactor,
          ),
      headlineMedium: _textTheme(color).headlineMedium?.copyWith(
            fontSize: _textTheme(color).headlineMedium!.fontSize! *
                _smallTextScaleFactor,
          ),
      headlineSmall: _textTheme(color).headlineSmall?.copyWith(
            fontSize: _textTheme(color).headlineSmall!.fontSize! *
                _smallTextScaleFactor,
          ),
      titleLarge: _textTheme(color).titleLarge?.copyWith(
            fontSize:
                _textTheme(color).titleLarge!.fontSize! * _smallTextScaleFactor,
          ),
      titleMedium: _textTheme(color).titleMedium?.copyWith(
            fontSize: _textTheme(color).titleMedium!.fontSize! *
                _smallTextScaleFactor,
          ),
      titleSmall: _textTheme(color).titleSmall?.copyWith(
            fontSize:
                _textTheme(color).titleSmall!.fontSize! * _smallTextScaleFactor,
          ),
      bodyLarge: _textTheme(color).bodyLarge?.copyWith(
            fontSize:
                _textTheme(color).bodyLarge!.fontSize! * _smallTextScaleFactor,
          ),
      bodyMedium: _textTheme(color).bodyMedium?.copyWith(
            fontSize:
                _textTheme(color).bodyMedium!.fontSize! * _smallTextScaleFactor,
          ),
      bodySmall: _textTheme(color).bodySmall?.copyWith(
            fontSize:
                _textTheme(color).bodySmall!.fontSize! * _smallTextScaleFactor,
          ),
      labelSmall: _textTheme(color).labelSmall?.copyWith(
            fontSize:
                _textTheme(color).labelSmall!.fontSize! * _smallTextScaleFactor,
          ),
      labelLarge: _textTheme(color).labelLarge?.copyWith(
            fontSize:
                _textTheme(color).labelLarge!.fontSize! * _smallTextScaleFactor,
          ),
    );
  }

  static TextTheme _mediumTextTheme(Color color) {
    return TextTheme(
      displayLarge: _textTheme(color).displayLarge?.copyWith(
            fontSize: _textTheme(color).displayLarge!.fontSize! *
                _mediumTextScaleFactor,
          ),
      displayMedium: _textTheme(color).displayMedium?.copyWith(
            fontSize: _textTheme(color).displayMedium!.fontSize! *
                _mediumTextScaleFactor,
          ),
      displaySmall: _textTheme(color).displaySmall?.copyWith(
            fontSize: _textTheme(color).displaySmall!.fontSize! *
                _mediumTextScaleFactor,
          ),
      headlineMedium: _textTheme(color).headlineMedium?.copyWith(
            fontSize: _textTheme(color).headlineMedium!.fontSize! *
                _mediumTextScaleFactor,
          ),
      headlineSmall: _textTheme(color).headlineSmall?.copyWith(
            fontSize: _textTheme(color).headlineSmall!.fontSize! *
                _mediumTextScaleFactor,
          ),
      titleLarge: _textTheme(color).titleLarge?.copyWith(
            fontSize: _textTheme(color).titleLarge!.fontSize! *
                _mediumTextScaleFactor,
          ),
      titleMedium: _textTheme(color).titleMedium?.copyWith(
            fontSize: _textTheme(color).titleMedium!.fontSize! *
                _mediumTextScaleFactor,
          ),
      titleSmall: _textTheme(color).titleSmall?.copyWith(
            fontSize: _textTheme(color).titleSmall!.fontSize! *
                _mediumTextScaleFactor,
          ),
      bodyLarge: _textTheme(color).bodyLarge?.copyWith(
            fontSize:
                _textTheme(color).bodyLarge!.fontSize! * _mediumTextScaleFactor,
          ),
      bodyMedium: _textTheme(color).bodyMedium?.copyWith(
            color: Colors.blue,
            fontSize: _textTheme(color).bodyMedium!.fontSize! *
                _mediumTextScaleFactor,
          ),
      bodySmall: _textTheme(color).bodySmall?.copyWith(
            fontSize:
                _textTheme(color).bodySmall!.fontSize! * _mediumTextScaleFactor,
          ),
      labelSmall: _textTheme(color).labelSmall?.copyWith(
            fontSize: _textTheme(color).labelSmall!.fontSize! *
                _mediumTextScaleFactor,
          ),
      labelLarge: _textTheme(color).labelLarge?.copyWith(
            fontSize: _textTheme(color).labelLarge!.fontSize! *
                _mediumTextScaleFactor,
          ),
    );
  }
}

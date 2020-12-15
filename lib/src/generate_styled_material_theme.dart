import 'package:easily_materialized/src/contrast_aware_text_color.dart';
import 'package:flutter/material.dart';

/// # Description
///
/// Convenience function to easily modify text's color and fonts based on
/// the official material theme's type system
/// [here](https://material.io/design/typography/the-type-system.html)
///
/// Will returns a theme data based on englishLike2018, with styled textTheme,
/// primaryTextTheme, and accentTextTheme.
///
/// (I wonder why this doesn't already included by default in the Flutter SDK)
///
/// Display means all headlines and subtitles.
/// Body means all other else.
///
/// You also need to make sure that you include w300, w400, and w500 font files
/// since those are the font weights used in [Typography.englishLike2018].
///
/// * [baseTextTheme] of the theme data. By default it's [englishLike2018].
/// * [baseThemeData] of the theme data. If null, will create a default one
///   before applying textTheme, primaryTextTheme, and accentTextTheme to it.
/// * [bodyFontFamily] of the theme. Will be applied to body and caption text
///   styles. Make sure to register it in pubspec.
/// * [brightness] of the theme. Dark or Light. Actually this doesn't really
///   needed to be passed here.
/// * [displayFontFamily] of the theme. Will be applied to headline and subtitle
///   text styles. Make sure to register it in pubspec.
/// * [textColors] of the app to be applied to `textTheme`, `primaryTextTheme`,
///   and `accentTextTheme`. Should be contrast to those colors.
///
/// P.S. I doesn't include some properties such as fontSize and fontWeight here
/// on purpose. Because I don't recommend it. But you can always change it by
/// calling `copyWith` on the returned [ThemeData].
///
/// # How to use:
///
/// ```
/// final generateTheme = GenerateStyledMaterialTheme(
///   baseThemeData: ThemeData(),
/// );
///
/// final result = generateTheme(
///   bodyFontFamily: 'Raleway',
///   displayFontFamily: 'Lato',
///   textColors: ContrastAwareTextColor (
///     regularBody: Colors.blue,
///     regularDisplay: Colors.red,
///     primaryBody: Colors.green,
///     primaryDisplay: Colors.orange,
///     accentBody: Colors.pink,
///     accentDisplay: Colors.indigo
///   )
/// );
/// ```
class GenerateStyledMaterialTheme {
  /// When provided, will return a copy of this [ThemeData] with modifications
  /// instead of generating a new one.
  final ThemeData baseThemeData;

  /// Base text theme in case you want to use other than the default
  /// [Typography.englishLike2018].
  final TextTheme baseTextTheme;

  const GenerateStyledMaterialTheme({
    this.baseThemeData,
    this.baseTextTheme = Typography.englishLike2018,
  }) : assert(baseTextTheme != null);

  /// Generate modified ThemeData based on given parameters.
  ThemeData call({
    @required String bodyFontFamily,
    @required String displayFontFamily,
    ContrastAwareTextColor textColors,
  }) {
    TextTheme textTheme = baseTextTheme.copyWith();
    TextTheme primaryTextTheme = baseTextTheme.copyWith();
    TextTheme accentTextTheme = baseTextTheme.copyWith();

    /// Apply textTheme's color
    if (textColors.regularBody != null) {
      textTheme = textTheme.apply(bodyColor: textColors.regularBody);
    }
    if (textColors.primaryBody != null) {
      primaryTextTheme = primaryTextTheme.apply(
        bodyColor: textColors.primaryBody,
      );
    }
    if (textColors.accentBody != null) {
      accentTextTheme = accentTextTheme.apply(bodyColor: textColors.accentBody);
    }

    if (textColors.regularDisplay != null) {
      textTheme = textTheme.apply(displayColor: textColors.regularDisplay);
    }
    if (textColors.primaryDisplay != null) {
      primaryTextTheme = primaryTextTheme.apply(
        displayColor: textColors.primaryDisplay,
      );
    }
    if (textColors.accentDisplay != null) {
      accentTextTheme = accentTextTheme.apply(
        displayColor: textColors.accentDisplay,
      );
    }

    /// Apply primaryTextTheme's color
    if (textColors.primaryBody != null) {
      primaryTextTheme = primaryTextTheme.apply(
        bodyColor: textColors.primaryBody,
      );
    }
    if (textColors.primaryDisplay != null) {
      primaryTextTheme = primaryTextTheme.apply(
        displayColor: textColors.primaryDisplay,
      );
    }

    /// Apply accentTextTheme's color
    if (textColors.primaryBody != null) {
      accentTextTheme = accentTextTheme.apply(
        bodyColor: textColors.accentBody,
      );
    }
    if (textColors.primaryDisplay != null) {
      accentTextTheme = accentTextTheme.apply(
        displayColor: textColors.accentDisplay,
      );
    }

    if (displayFontFamily != null && displayFontFamily.isNotEmpty) {
      textTheme = modifyDisplayFontFamily(
        textTheme: textTheme,
        fontFamily: displayFontFamily,
      );
      primaryTextTheme = modifyDisplayFontFamily(
        textTheme: primaryTextTheme,
        fontFamily: displayFontFamily,
      );
      accentTextTheme = modifyDisplayFontFamily(
        textTheme: accentTextTheme,
        fontFamily: displayFontFamily,
      );
    }

    if (bodyFontFamily != null && bodyFontFamily.isNotEmpty) {
      textTheme = modifyBodyFontFamily(
        textTheme: textTheme,
        fontFamily: displayFontFamily,
      );
      primaryTextTheme = modifyBodyFontFamily(
        textTheme: primaryTextTheme,
        fontFamily: displayFontFamily,
      );
      accentTextTheme = modifyBodyFontFamily(
        textTheme: accentTextTheme,
        fontFamily: displayFontFamily,
      );
    }

    if (baseThemeData != null) {
      return baseThemeData.copyWith(
        textTheme: textTheme,
        primaryTextTheme: primaryTextTheme,
        accentTextTheme: accentTextTheme,
      );
    }

    return ThemeData(
      textTheme: textTheme,
      primaryTextTheme: primaryTextTheme,
      accentTextTheme: accentTextTheme,
    );
  }

  @visibleForTesting
  TextTheme modifyDisplayFontFamily({
    @required TextTheme textTheme,
    @required String fontFamily,
  }) {
    return textTheme.copyWith(
      headline1: textTheme.headline1.copyWith(fontFamily: fontFamily),
      headline2: textTheme.headline2.copyWith(fontFamily: fontFamily),
      headline3: textTheme.headline3.copyWith(fontFamily: fontFamily),
      headline4: textTheme.headline4.copyWith(fontFamily: fontFamily),
      headline5: textTheme.headline5.copyWith(fontFamily: fontFamily),
      headline6: textTheme.headline6.copyWith(fontFamily: fontFamily),
      subtitle1: textTheme.subtitle1.copyWith(fontFamily: fontFamily),
      subtitle2: textTheme.subtitle2.copyWith(fontFamily: fontFamily),
    );
  }

  @visibleForTesting
  TextTheme modifyBodyFontFamily({
    @required TextTheme textTheme,
    @required String fontFamily,
  }) {
    return textTheme.copyWith(
      bodyText1: textTheme.bodyText1.copyWith(fontFamily: fontFamily),
      bodyText2: textTheme.bodyText2.copyWith(fontFamily: fontFamily),
      caption: textTheme.caption.copyWith(fontFamily: fontFamily),
      button: textTheme.button.copyWith(fontFamily: fontFamily),
      overline: textTheme.overline.copyWith(fontFamily: fontFamily),
    );
  }
}

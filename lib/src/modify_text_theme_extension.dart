import 'package:flutter/material.dart';

/// Extension of TextTheme to make it easier to modify display & body styles.
///
/// These extensions are also chainable, like:
///
/// ```
/// final result = Typography.englishLike2018
///   .modifyDisplayStyles(fontFamily: 'Montserrat', color: Colors.green)
///   .modifyBodyStyles(fontFamily: 'Lato', color: Colors.red);
/// ```
extension ModifyTextTheme on TextTheme {
  /// Modify "display" `textStyle` to match [color] and [fontFamily].
  ///
  /// Display text styles are headlines (1-6) and subtitles (1-2) as per
  /// material design spec.
  ///
  /// [Read More](https://material.io/design/typography/the-type-system.html)
  ///
  /// * [fontFamily] if omitted, will not change the fontFamily
  /// * [color] if ommitted, will not change the color
  ///
  /// Will not change anything else beside these 2 properties.
  TextTheme modifyDisplayStyles({
    String fontFamily,
    Color color,
  }) {
    return this.copyWith(
      headline1: this.headline1.copyWith(
            fontFamily: fontFamily ?? this.headline1.fontFamily,
            color: color ?? this.headline1.color,
          ),
      headline2: this.headline2.copyWith(
            fontFamily: fontFamily ?? this.headline2.fontFamily,
            color: color ?? this.headline2.color,
          ),
      headline3: this.headline3.copyWith(
            fontFamily: fontFamily ?? this.headline3.fontFamily,
            color: color ?? this.headline3.color,
          ),
      headline4: this.headline4.copyWith(
            fontFamily: fontFamily ?? this.headline4.fontFamily,
            color: color ?? this.headline4.color,
          ),
      headline5: this.headline5.copyWith(
            fontFamily: fontFamily ?? this.headline5.fontFamily,
            color: color ?? this.headline5.color,
          ),
      headline6: this.headline6.copyWith(
            fontFamily: fontFamily ?? this.headline6.fontFamily,
            color: color ?? this.headline6.color,
          ),
      subtitle1: this.subtitle1.copyWith(
            fontFamily: fontFamily ?? this.subtitle1.fontFamily,
            color: color ?? this.subtitle1.color,
          ),
      subtitle2: this.subtitle2.copyWith(
            fontFamily: fontFamily ?? this.subtitle2.fontFamily,
            color: color ?? this.subtitle2.color,
          ),
    );
  }

  /// Modify "body" `textStyle` to match [color] and [fontFamily].
  ///
  /// Body text styles are bodyText (1-2), caption, button and overline as per
  /// material design spec.
  ///
  /// [Read More](https://material.io/design/typography/the-type-system.html)
  ///
  /// * [fontFamily] if omitted, will not change the fontFamily
  /// * [color] if ommitted, will not change the color
  ///
  /// Will not change anything else beside these 2 properties.
  TextTheme modifyBodyStyles({
    String fontFamily,
    Color color,
  }) {
    return this.copyWith(
      bodyText1: this.bodyText1.copyWith(
            fontFamily: fontFamily ?? this.bodyText1.fontFamily,
            color: color ?? this.bodyText1.color,
          ),
      bodyText2: this.bodyText2.copyWith(
            fontFamily: fontFamily ?? this.bodyText2.fontFamily,
            color: color ?? this.bodyText2.color,
          ),
      caption: this.caption.copyWith(
            fontFamily: fontFamily ?? this.caption.fontFamily,
            color: color ?? this.caption.color,
          ),
      button: this.button.copyWith(
            fontFamily: fontFamily ?? this.button.fontFamily,
            color: color ?? this.button.color,
          ),
      overline: this.overline.copyWith(
            fontFamily: fontFamily ?? this.overline.fontFamily,
            color: color ?? this.overline.color,
          ),
    );
  }
}

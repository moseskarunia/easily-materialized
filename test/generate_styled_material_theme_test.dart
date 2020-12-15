import 'package:easily_materialized/easily_materialized.dart';
import 'package:easily_materialized/src/contrast_aware_text_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ContrastAwareTextColor colors;

  setUp(() {
    colors = ContrastAwareTextColor(
      accentBody: Colors.green,
      accentDisplay: Colors.blue,
      primaryBody: Colors.red,
      primaryDisplay: Colors.orange,
      regularBody: Colors.indigo,
      regularDisplay: Colors.grey,
    );
  });

  test('modifyDisplayFontFamily', () {
    final generateTheme = GenerateStyledMaterialTheme();

    final result = generateTheme.modifyDisplayFontFamily(
      textTheme: Typography.blackCupertino,
      fontFamily: 'Raleway',
    );

    expect(
      result.headline1,
      Typography.blackCupertino.headline1.copyWith(fontFamily: 'Raleway'),
    );
    expect(
      result.headline2,
      Typography.blackCupertino.headline2.copyWith(fontFamily: 'Raleway'),
    );
    expect(
      result.headline3,
      Typography.blackCupertino.headline3.copyWith(fontFamily: 'Raleway'),
    );
    expect(
      result.headline4,
      Typography.blackCupertino.headline4.copyWith(fontFamily: 'Raleway'),
    );
    expect(
      result.headline5,
      Typography.blackCupertino.headline5.copyWith(fontFamily: 'Raleway'),
    );
    expect(
      result.headline6,
      Typography.blackCupertino.headline6.copyWith(fontFamily: 'Raleway'),
    );
    expect(
      result.subtitle1,
      Typography.blackCupertino.subtitle1.copyWith(fontFamily: 'Raleway'),
    );
    expect(
      result.subtitle2,
      Typography.blackCupertino.subtitle2.copyWith(fontFamily: 'Raleway'),
    );
  });

  test('modifyBodyFontFamily', () {
    final generateTheme = GenerateStyledMaterialTheme();

    final result = generateTheme.modifyBodyFontFamily(
      textTheme: Typography.englishLike2018,
      fontFamily: 'Lato',
    );

    expect(
      result.bodyText1,
      Typography.englishLike2018.bodyText1.copyWith(fontFamily: 'Lato'),
    );
    expect(
      result.bodyText2,
      Typography.englishLike2018.bodyText2.copyWith(fontFamily: 'Lato'),
    );
    expect(
      result.caption,
      Typography.englishLike2018.caption.copyWith(fontFamily: 'Lato'),
    );
    expect(
      result.button,
      Typography.englishLike2018.button.copyWith(fontFamily: 'Lato'),
    );
    expect(
      result.overline,
      Typography.englishLike2018.overline.copyWith(fontFamily: 'Lato'),
    );
  });
  // group('should use provided baseThemeData', () {
  //   test('and use all colors', () {
  //     final generateTheme = GenerateStyledMaterialTheme(
  //       baseThemeData: ThemeData(
  //         brightness: Brightness.dark,
  //         primaryColor: Colors.blue,
  //         accentColor: Colors.green,
  //       ),
  //     );

  //     final result = generateTheme(
  //       displayFontFamily: 'Montserrat',
  //       bodyFontFamily: 'Raleway',
  //       textColors: colors,
  //     );

  //     // expect(result);
  //   });
  // });

  // group('should use provided baseTextTheme', () {});
}

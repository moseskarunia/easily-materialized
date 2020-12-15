import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:easily_materialized/src/modify_text_theme_extension.dart';

void main() {
  group('modifyDisplayStyles', () {
    test('returns with fontFamily unchanged, and color changed', () {
      final result =
          Typography.blackCupertino.modifyDisplayStyles(color: Colors.blue);

      expect(
        result.headline1,
        Typography.blackCupertino.headline1.copyWith(
          color: Colors.blue,
        ),
      );
      expect(
        result.headline2,
        Typography.blackCupertino.headline2.copyWith(
          color: Colors.blue,
        ),
      );
      expect(
        result.headline3,
        Typography.blackCupertino.headline3.copyWith(
          color: Colors.blue,
        ),
      );
      expect(
        result.headline4,
        Typography.blackCupertino.headline4.copyWith(
          color: Colors.blue,
        ),
      );
      expect(
        result.headline5,
        Typography.blackCupertino.headline5.copyWith(
          color: Colors.blue,
        ),
      );
      expect(
        result.headline6,
        Typography.blackCupertino.headline6.copyWith(
          color: Colors.blue,
        ),
      );
      expect(
        result.subtitle1,
        Typography.blackCupertino.subtitle1.copyWith(
          color: Colors.blue,
        ),
      );
      expect(
        result.subtitle2,
        Typography.blackCupertino.subtitle2.copyWith(
          color: Colors.blue,
        ),
      );
    });
    test('returns with fontFamily changed, and color unchanged', () {
      final result =
          Typography.blackCupertino.modifyDisplayStyles(fontFamily: 'Raleway');

      expect(
        result.headline1,
        Typography.blackCupertino.headline1.copyWith(
          fontFamily: 'Raleway',
        ),
      );
      expect(
        result.headline2,
        Typography.blackCupertino.headline2.copyWith(
          fontFamily: 'Raleway',
        ),
      );
      expect(
        result.headline3,
        Typography.blackCupertino.headline3.copyWith(
          fontFamily: 'Raleway',
        ),
      );
      expect(
        result.headline4,
        Typography.blackCupertino.headline4.copyWith(
          fontFamily: 'Raleway',
        ),
      );
      expect(
        result.headline5,
        Typography.blackCupertino.headline5.copyWith(
          fontFamily: 'Raleway',
        ),
      );
      expect(
        result.headline6,
        Typography.blackCupertino.headline6.copyWith(
          fontFamily: 'Raleway',
        ),
      );
      expect(
        result.subtitle1,
        Typography.blackCupertino.subtitle1.copyWith(
          fontFamily: 'Raleway',
        ),
      );
      expect(
        result.subtitle2,
        Typography.blackCupertino.subtitle2.copyWith(
          fontFamily: 'Raleway',
        ),
      );
    });

    test('returns with both changed', () {
      final result = Typography.blackCupertino.modifyDisplayStyles(
        fontFamily: 'Montserrat',
        color: Colors.green,
      );

      expect(
        result.headline1,
        Typography.blackCupertino.headline1.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
      expect(
        result.headline2,
        Typography.blackCupertino.headline2.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
      expect(
        result.headline3,
        Typography.blackCupertino.headline3.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
      expect(
        result.headline4,
        Typography.blackCupertino.headline4.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
      expect(
        result.headline5,
        Typography.blackCupertino.headline5.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
      expect(
        result.headline6,
        Typography.blackCupertino.headline6.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
      expect(
        result.subtitle1,
        Typography.blackCupertino.subtitle1.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
      expect(
        result.subtitle2,
        Typography.blackCupertino.subtitle2.copyWith(
          fontFamily: 'Montserrat',
          color: Colors.green,
        ),
      );
    });

    test('returns with both unchanged', () {
      final result = Typography.blackCupertino.modifyBodyStyles();
      expect(result, Typography.blackCupertino);
    });
  });

  group('modifyBodyStyles', () {
    test('returns with fontFamily unchanged, and color changed', () {
      final result = Typography.englishLike2018.modifyBodyStyles(
        color: Colors.orange,
      );

      expect(
        result.bodyText1,
        Typography.englishLike2018.bodyText1.copyWith(color: Colors.orange),
      );
      expect(
        result.bodyText2,
        Typography.englishLike2018.bodyText2.copyWith(color: Colors.orange),
      );
      expect(
        result.caption,
        Typography.englishLike2018.caption.copyWith(color: Colors.orange),
      );
      expect(
        result.button,
        Typography.englishLike2018.button.copyWith(color: Colors.orange),
      );
      expect(
        result.overline,
        Typography.englishLike2018.overline.copyWith(color: Colors.orange),
      );
    });
    test('returns with fontFamily changed, and color unchanged', () {
      final result = Typography.englishLike2018.modifyBodyStyles(
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
    test('returns with both changed', () {
      final result = Typography.englishLike2018.modifyBodyStyles(
        fontFamily: 'Lato',
        color: Colors.red,
      );

      expect(
        result.bodyText1,
        Typography.englishLike2018.bodyText1.copyWith(
          fontFamily: 'Lato',
          color: Colors.red,
        ),
      );
      expect(
        result.bodyText2,
        Typography.englishLike2018.bodyText2.copyWith(
          fontFamily: 'Lato',
          color: Colors.red,
        ),
      );
      expect(
        result.caption,
        Typography.englishLike2018.caption.copyWith(
          fontFamily: 'Lato',
          color: Colors.red,
        ),
      );
      expect(
        result.button,
        Typography.englishLike2018.button.copyWith(
          fontFamily: 'Lato',
          color: Colors.red,
        ),
      );
      expect(
        result.overline,
        Typography.englishLike2018.overline.copyWith(
          fontFamily: 'Lato',
          color: Colors.red,
        ),
      );
    });
    test('returns with both unchanged', () {
      final result = Typography.englishLike2018.modifyBodyStyles();
      expect(result, Typography.englishLike2018);
    });
  });

  test('modifyDisplayStyles & modifyBodyStyles are chainable', () {
    final result = Typography.englishLike2018
        .modifyDisplayStyles(fontFamily: 'Montserrat', color: Colors.green)
        .modifyBodyStyles(fontFamily: 'Lato', color: Colors.red);

    expect(
      result.headline1,
      Typography.englishLike2018.headline1.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );
    expect(
      result.headline2,
      Typography.englishLike2018.headline2.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );
    expect(
      result.headline3,
      Typography.englishLike2018.headline3.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );
    expect(
      result.headline4,
      Typography.englishLike2018.headline4.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );
    expect(
      result.headline5,
      Typography.englishLike2018.headline5.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );
    expect(
      result.headline6,
      Typography.englishLike2018.headline6.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );
    expect(
      result.subtitle1,
      Typography.englishLike2018.subtitle1.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );
    expect(
      result.subtitle2,
      Typography.englishLike2018.subtitle2.copyWith(
        fontFamily: 'Montserrat',
        color: Colors.green,
      ),
    );

    expect(
      result.bodyText1,
      Typography.englishLike2018.bodyText1.copyWith(
        fontFamily: 'Lato',
        color: Colors.red,
      ),
    );
    expect(
      result.bodyText2,
      Typography.englishLike2018.bodyText2.copyWith(
        fontFamily: 'Lato',
        color: Colors.red,
      ),
    );
    expect(
      result.caption,
      Typography.englishLike2018.caption.copyWith(
        fontFamily: 'Lato',
        color: Colors.red,
      ),
    );
    expect(
      result.button,
      Typography.englishLike2018.button.copyWith(
        fontFamily: 'Lato',
        color: Colors.red,
      ),
    );
    expect(
      result.overline,
      Typography.englishLike2018.overline.copyWith(
        fontFamily: 'Lato',
        color: Colors.red,
      ),
    );
  });
}

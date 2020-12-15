# easily_materialized

![easily_materialized](https://github.com/moseskarunia/easily-materialized/workflows/easily_materialized/badge.svg) [![codecov](https://codecov.io/gh/moseskarunia/easily-materialized/branch/master/graph/badge.svg?token=9WT1SZPDB4)](https://codecov.io/gh/moseskarunia/easily-materialized)

<a href="https://www.buymeacoffee.com/moseskarunia" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="50" style="height: 6px !important;width: 22px !important;" ></a>

A flutter library to help lift up some tedious tasks in setting up material theme properly.

## Features

### ModifyTextTheme (TextTheme extension)
`ModifyTextTheme` an extension of `TextTheme` to easily bulk update either or both display and body text styles.

I only expose `fontFamily` and `color` because I believe only those two should be modified. But in case you need more, you can always call copyWith from any `TextTheme` and `TextStyle`.

To understand more about material type system, [read here](https://material.io/design/typography/the-type-system.html).

#### Update your display styles (all headlines and subtitles):

```dart
final TextTheme result = Typography.englishLike2018
  .modifyDisplayStyles(fontFamily: 'Montserrat', color: Colors.green);
```

#### Update your body styles (bodyText1, bodyText2, caption, button and overline)

```dart
final TextTheme result = Typography.englishLike2018
  .modifyBodyStyles(fontFamily: 'Lato', color: Colors.red);
```

#### Or even chain both of them to update all styles in a theme

```dart
final TextTheme result = Typography.englishLike2018
  .modifyDisplayStyles(fontFamily: 'Montserrat', color: Colors.green)
  .modifyBodyStyles(fontFamily: 'Lato', color: Colors.red);
```
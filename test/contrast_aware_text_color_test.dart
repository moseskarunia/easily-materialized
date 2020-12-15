import 'package:easily_materialized/src/contrast_aware_text_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ContrastAwareTextColor', () {
    final colors = ContrastAwareTextColor(
      accentBody: Colors.green,
      accentDisplay: Colors.blue,
      primaryBody: Colors.red,
      primaryDisplay: Colors.orange,
      regularBody: Colors.indigo,
      regularDisplay: Colors.grey,
    );

    expect(colors.accentBody, Colors.green);
    expect(colors.accentDisplay, Colors.blue);
    expect(colors.primaryBody, Colors.red);
    expect(colors.primaryDisplay, Colors.orange);
    expect(colors.regularBody, Colors.indigo);
    expect(colors.regularDisplay, Colors.grey);
  });
}

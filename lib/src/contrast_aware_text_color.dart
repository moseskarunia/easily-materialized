import 'package:flutter/material.dart';

/// Color group to specify for 3 available contrasts: Regular,
/// contrast with primary, and contrast with accent. When null, won't override
/// color from the material library.
class ContrastAwareTextColor {
  /// Regular text color which should contrast with background color.
  final Color regularBody, regularDisplay;

  /// Text color which should contrast with primary color.
  final Color primaryBody, primaryDisplay;

  /// Text color which should constrast with accent color.
  final Color accentBody, accentDisplay;

  const ContrastAwareTextColor({
    this.regularBody,
    this.regularDisplay,
    this.primaryBody,
    this.primaryDisplay,
    this.accentBody,
    this.accentDisplay,
  });
}

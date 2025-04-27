import 'package:flutter/material.dart';

/// A comprehensive style configuration class for custom navigation bars.
/// This class provides customizable styling options for navigation components,
/// including colors, borders, typography, animations, and layout properties.
/// It also includes several predefined styles for common design patterns.
class SmartNavStyle {
  /// The background color of the navigation bar.
  final Color backgroundColor;

  /// The background gradient of the navigation bar (nullable).
  final Gradient? backgroundGradient;

  /// The border color of the navigation bar (nullable).
  final Color? borderColor;

  /// The border radius of the navigation bar corners.
  final double borderRadius;

  /// The margin around the navigation bar.
  final EdgeInsets margin;

  /// The padding inside the navigation bar.
  final EdgeInsets padding;

  /// The default color for active navigation items.
  final Color defaultActiveColor;

  /// The default color for inactive navigation items.
  final Color defaultInactiveColor;

  /// The default text style for active navigation items.
  final TextStyle defaultActiveTextStyle;

  /// The default text style for inactive navigation items.
  final TextStyle defaultInactiveTextStyle;

  /// The default size for navigation item icons.
  final double defaultIconSize;

  /// The scaling factor for animation effects on active items.
  final double scaleFactor;

  /// The animation curve used for transition effects.
  final Curve animationCurve;

  /// The duration of animation effects.
  final Duration animationDuration;

  /// Whether to show labels under navigation items.
  final bool showLabel;

  /// Creates a [SmartNavStyle] with customizable properties.
  /// All parameters have sensible defaults for a basic navigation bar style.
  const SmartNavStyle({
    this.backgroundColor = Colors.white,
    this.backgroundGradient,
    this.borderColor,
    this.borderRadius = 20.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    this.padding = const EdgeInsets.all(5),
    this.defaultActiveColor = const Color(0xFF101720),
    this.defaultInactiveColor = Colors.black54,
    this.defaultActiveTextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    this.defaultInactiveTextStyle = const TextStyle(
      fontSize: 12,
      color: Color(0xFFCCCCCC),
      fontWeight: FontWeight.w400,
    ),
    this.defaultIconSize = 24.0,
    this.scaleFactor = 1.1,
    this.animationCurve = Curves.easeOutQuad,
    this.animationDuration = const Duration(milliseconds: 300),
    this.showLabel = true,
  });

  /// A neon-themed style with vibrant colors and elastic animations.
  /// Features a dark background with bright neon accent colors and pronounced animation effects.
  static const SmartNavStyle neonStyle = SmartNavStyle(
    backgroundColor: Color(0xFF101720),
    borderColor: Color(0xFF00FFAA),
    borderRadius: 18.0,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    padding: EdgeInsets.all(6),
    defaultActiveColor: Color(0xFF00FFAA),
    defaultInactiveColor: Color(0xFFAAAAAA),
    defaultActiveTextStyle: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      color: Color(0xFF00FFAA),
    ),
    defaultInactiveTextStyle: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: Color(0xFFCCCCCC),
    ),
    defaultIconSize: 24.0,
    scaleFactor: 1.2,
    animationCurve: Curves.elasticOut,
    animationDuration: Duration(milliseconds: 400),
    showLabel: true,
  );

  /// A colorful style with vibrant hues and aquatic theme.
  /// Uses light blue background with teal accent colors and standard animations.
  static const SmartNavStyle colorfulStyle = SmartNavStyle(
    backgroundColor: Color(0xFFE1F5FE),
    borderColor: Color(0xFF00BCD4),
    borderRadius: 30.0,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    padding: EdgeInsets.all(5),
    defaultActiveColor: Color(0xFF00796B),
    defaultInactiveColor: Color(0xFF80CBC4),
    defaultActiveTextStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    defaultInactiveTextStyle: TextStyle(
      fontSize: 12,
      color: Color(0xFFCCCCCC),
      fontWeight: FontWeight.w400,
    ),
    defaultIconSize: 24.0,
    scaleFactor: 1.15,
    animationCurve: Curves.easeOutQuad,
    animationDuration: Duration(milliseconds: 300),
    showLabel: true,
  );

  /// A minimal style with transparent background and simple elements.
  /// Features no background or borders, with basic animations and hidden labels.
  static const SmartNavStyle minimalStyle = SmartNavStyle(
    backgroundColor: Colors.white,
    borderColor: Colors.transparent,
    borderRadius: 0,
    margin: EdgeInsets.zero,
    padding: EdgeInsets.symmetric(vertical: 8),
    defaultActiveColor: Colors.blueAccent,
    defaultInactiveColor: Colors.grey,
    defaultActiveTextStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    defaultInactiveTextStyle: TextStyle(
      fontSize: 12,
      color: Color(0xFFCCCCCC),
      fontWeight: FontWeight.w400,
    ),
    defaultIconSize: 24.0,
    scaleFactor: 1.0,
    animationCurve: Curves.easeOutQuad,
    animationDuration: Duration(milliseconds: 300),
    showLabel: false,
  );

  /// A gradient background style for the navigation bar with smooth animations.
  static SmartNavStyle gradientStyle = SmartNavStyle(
    backgroundGradient: const LinearGradient(
      colors: [Colors.deepPurpleAccent, Colors.pinkAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.3, 1.0], // Adjusting stops for a smoother gradient transition
    ),
    backgroundColor: Colors.transparent, // Transparent to show gradient
    borderColor: Colors.transparent,
    borderRadius: 30.0, // Soft, rounded corners for a modern look
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    padding: const EdgeInsets.all(5),
    defaultActiveColor: Colors.white,
    defaultInactiveColor: Colors.grey[400]!,
    defaultActiveTextStyle: const TextStyle(
      fontSize: 14, // Slightly larger font for clarity
      fontWeight: FontWeight.bold, // Bold text for active items
      color: Colors.white,
      letterSpacing: 0.5, // Small letter spacing for better readability
    ),
    defaultInactiveTextStyle: const TextStyle(
      fontSize: 14, // Consistent size with active text
      fontWeight: FontWeight.w400,
      color: Color(0xFFCCCCCC),
      letterSpacing: 0.3, // Small letter spacing for consistency
    ),
    defaultIconSize: 28.0, // Slightly larger icons for better visibility
    scaleFactor: 1.2, // A bit more pronounced scale effect for active items
    animationCurve: Curves.easeOut, // Smooth easing for fluid transitions
    animationDuration: const Duration(
        milliseconds: 400), // Slightly longer animation for smoother effect
    showLabel: true,
  );

  /// Creates a copy of this style with the given fields replaced.
  /// Returns a new [SmartNavStyle] instance where non-null parameters replace the corresponding properties of the original style.
  SmartNavStyle copyWith({
    Color? backgroundColor,
    Gradient? backgroundGradient,
    Color? borderColor,
    double? borderRadius,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? defaultActiveColor,
    Color? defaultInactiveColor,
    TextStyle? defaultActiveTextStyle,
    TextStyle? defaultInactiveTextStyle,
    double? defaultIconSize,
    double? scaleFactor,
    Curve? animationCurve,
    Duration? animationDuration,
    bool? showLabel,
  }) {
    return SmartNavStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      borderColor: borderColor ?? this.borderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      defaultActiveColor: defaultActiveColor ?? this.defaultActiveColor,
      defaultInactiveColor: defaultInactiveColor ?? this.defaultInactiveColor,
      defaultActiveTextStyle:
          defaultActiveTextStyle ?? this.defaultActiveTextStyle,
      defaultInactiveTextStyle:
          defaultInactiveTextStyle ?? this.defaultInactiveTextStyle,
      defaultIconSize: defaultIconSize ?? this.defaultIconSize,
      scaleFactor: scaleFactor ?? this.scaleFactor,
      animationCurve: animationCurve ?? this.animationCurve,
      animationDuration: animationDuration ?? this.animationDuration,
      showLabel: showLabel ?? this.showLabel,
    );
  }
}

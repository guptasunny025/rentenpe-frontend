import 'package:flutter/material.dart';

class ThemeConfigExtension extends ThemeExtension<ThemeConfigExtension> {
  const ThemeConfigExtension({
    required this.inverseTextColor,
    required this.baseTextColor,
    required this.subduedTextColor,
    required this.accentTextColor,
    required this.successAltTextColor,
    required this.errorAltTextColor,
    required this.disabledTextColor,
    required this.infoTextColor,
    required this.lightTextColor,
    required this.fontWeightBlack,
    required this.fontWeightBold,
    required this.fontWeightRegular,
    required this.fontWeightMedium,
    required this.fontWeightLight,
    required this.headline,
    required this.title,
    required this.body,
    required this.label,
    required this.primaryColor,
    required this.secondaryColor,
    required this.surfaceColor,
    required this.surfaceColorAlt,
    required this.warningColor,
    required this.badgeColor,
    required this.gradientLight,
    required this.gradientMain,
    required this.gradientDark,
  });

  final Color inverseTextColor;
  final Color baseTextColor;
  final Color subduedTextColor;
  final Color accentTextColor;
  final Color successAltTextColor;
  final Color errorAltTextColor;
  final Color disabledTextColor;
  final Color infoTextColor;
  final Color lightTextColor;

  final FontWeight fontWeightBlack;
  final FontWeight fontWeightBold;
  final FontWeight fontWeightRegular;
  final FontWeight fontWeightMedium;
  final FontWeight fontWeightLight;

  final TextStyle headline;
  final TextStyle title;
  final TextStyle body;
  final TextStyle label;

  final Color primaryColor;
  final Color secondaryColor;
  final Color surfaceColor;
  final Color surfaceColorAlt;
  final Color warningColor;
  final Color badgeColor;
  final Color gradientLight;
  final Color gradientMain;
  final Color gradientDark;

  @override
  ThemeExtension<ThemeConfigExtension> copyWith({
    Color? inverseTextColor,
    Color? baseTextColor,
    Color? subduedTextColor,
    Color? accentTextColor,
    Color? successAltTextColor,
    Color? errorAltTextColor,
    Color? disabledTextColor,
    Color? infoTextColor,
    Color? lightTextColor,
    FontWeight? fontWeightBlack,
    FontWeight? fontWeightBold,
    FontWeight? fontWeightRegular,
    FontWeight? fontWeightMedium,
    FontWeight? fontWeightLight,
    TextStyle? headline,
    TextStyle? title,
    TextStyle? body,
    TextStyle? label,
    Color? primaryColor,
    Color? secondaryColor,
    Color? surfaceColor,
    Color? surfaceColorAlt,
    Color? warningColor,
    Color? badgeColor,
    Color? gradientLight,
    Color? gradientMain,
    Color? gradientDark,
  }) {
    return ThemeConfigExtension(
      inverseTextColor: inverseTextColor ?? this.inverseTextColor,
      baseTextColor: baseTextColor ?? this.baseTextColor,
      subduedTextColor: subduedTextColor ?? this.subduedTextColor,
      accentTextColor: accentTextColor ?? this.accentTextColor,
      successAltTextColor: successAltTextColor ?? this.successAltTextColor,
      errorAltTextColor: errorAltTextColor ?? this.errorAltTextColor,
      disabledTextColor: disabledTextColor ?? this.disabledTextColor,
      infoTextColor: infoTextColor ?? this.infoTextColor,
      lightTextColor: lightTextColor ?? this.lightTextColor,
      fontWeightBlack: fontWeightBlack ?? this.fontWeightBlack,
      fontWeightBold: fontWeightBold ?? this.fontWeightBold,
      fontWeightRegular: fontWeightRegular ?? this.fontWeightRegular,
      fontWeightMedium: fontWeightMedium ?? this.fontWeightMedium,
      fontWeightLight: fontWeightLight ?? this.fontWeightLight,
      headline: headline ?? this.headline,
      title: title ?? this.title,
      body: body ?? this.body,
      label: label ?? this.label,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      surfaceColor: surfaceColor ?? this.surfaceColor,
      surfaceColorAlt: surfaceColorAlt ?? this.surfaceColorAlt,
      warningColor: warningColor ?? this.warningColor,
      badgeColor: badgeColor ?? this.badgeColor,
      gradientLight: gradientLight ?? this.gradientLight,
      gradientMain: gradientMain ?? this.gradientMain,
      gradientDark: gradientDark ?? this.gradientDark,
    );
  }

  @override
  ThemeExtension<ThemeConfigExtension> lerp(
      covariant ThemeExtension<ThemeConfigExtension>? other, double t) {
    if (other is! ThemeConfigExtension) {
      return this;
    }
    return ThemeConfigExtension(
      inverseTextColor: Color.lerp(inverseTextColor, other.inverseTextColor, t)!,
      baseTextColor: Color.lerp(baseTextColor, other.baseTextColor, t)!,
      subduedTextColor: Color.lerp(subduedTextColor, other.subduedTextColor, t)!,
      accentTextColor: Color.lerp(accentTextColor, other.accentTextColor, t)!,
      successAltTextColor: Color.lerp(successAltTextColor, other.successAltTextColor, t)!,
      errorAltTextColor: Color.lerp(errorAltTextColor, other.errorAltTextColor, t)!,
      disabledTextColor: Color.lerp(disabledTextColor, other.disabledTextColor, t)!,
      infoTextColor: Color.lerp(infoTextColor, other.infoTextColor, t)!,
      lightTextColor: Color.lerp(lightTextColor, other.lightTextColor, t)!,
      fontWeightBlack: other.fontWeightBlack,
      fontWeightBold: other.fontWeightBold,
      fontWeightRegular: other.fontWeightRegular,
      fontWeightMedium: other.fontWeightMedium,
      fontWeightLight: other.fontWeightLight,
      headline: TextStyle.lerp(headline, other.headline, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      surfaceColor: Color.lerp(surfaceColor, other.surfaceColor, t)!,
      surfaceColorAlt: Color.lerp(surfaceColorAlt, other.surfaceColorAlt, t)!,
      warningColor: Color.lerp(warningColor, other.warningColor, t)!,
      badgeColor: Color.lerp(badgeColor, other.badgeColor, t)!,
      gradientLight: Color.lerp(gradientLight, other.gradientLight, t)!,
      gradientMain: Color.lerp(gradientMain, other.gradientMain, t)!,
      gradientDark: Color.lerp(gradientDark, other.gradientDark, t)!,
    );
  }
}

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  ThemeConfigExtension get appTheme => theme.extension<ThemeConfigExtension>()!;
}

extension TextStyleExtensions on TextStyle {
  TextStyle inverseTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.inverseTextColor,
      );

  TextStyle baseTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.baseTextColor,
      );

  TextStyle subduedTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.subduedTextColor,
      );

  TextStyle accentTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.accentTextColor,
      );

  TextStyle successAltTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.successAltTextColor,
      );

  TextStyle errorAltTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.errorAltTextColor,
      );

  TextStyle disabledTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.disabledTextColor,
      );

  TextStyle infoTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.infoTextColor,
      );

  TextStyle lightTextColor(BuildContext ctx) => copyWith(
        color: ctx.appTheme.lightTextColor,
      );

  TextStyle primary(BuildContext ctx) => copyWith(
        color: ctx.appTheme.primaryColor,
      );

  TextStyle secondary(BuildContext ctx) => copyWith(
        color: ctx.appTheme.secondaryColor,
      );

  TextStyle black(BuildContext ctx) => copyWith(
        fontWeight: ctx.appTheme.fontWeightBlack,
      );

  TextStyle bold(BuildContext ctx) => copyWith(
        fontWeight: ctx.appTheme.fontWeightBold,
      );

  TextStyle regular(BuildContext ctx) => copyWith(
        fontWeight: ctx.appTheme.fontWeightRegular,
      );

  TextStyle medium(BuildContext ctx) => copyWith(
        fontWeight: ctx.appTheme.fontWeightMedium,
      );

  TextStyle light(BuildContext ctx) => copyWith(
        fontWeight: ctx.appTheme.fontWeightLight,
      );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site/theme/site_colors.dart';

class SiteTextStyles {
  static final baseTextStyle = GoogleFonts.rubik();

  static final h3BoldPrimary = GoogleFonts.openSans(
    color: SiteColors.primary,
    fontWeight: FontWeight.w700,
    fontSize: 33,
    height: 1.1,
  );

  static final h6BoldLight = GoogleFonts.openSans(
    color: SiteColors.light,
    fontWeight: FontWeight.w700,
    fontSize: 19,
    height: 1.2,
  );

  static final h6NormalLight = GoogleFonts.openSans(
    color: SiteColors.light,
    fontWeight: FontWeight.w400,
    fontSize: 19,
    height: 1.2,
  );

  static final pBoldLight = GoogleFonts.openSans(
    color: SiteColors.light,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 1.5,
  );

  static final pNormalLight = GoogleFonts.openSans(
    color: SiteColors.light,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.5,
  );
}

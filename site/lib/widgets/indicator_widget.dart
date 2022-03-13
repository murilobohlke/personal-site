import 'package:flutter/material.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

class IndicatorWidget extends StatelessWidget {
  final String number;
  final Color background;
  final Color textColor;

  const IndicatorWidget(
      {Key? key,
      required this.number,
      this.background = SiteColors.tertiary,
      this.textColor = SiteColors.light})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(25),
      ),
      alignment: Alignment.center,
      child: Text(
        number,
        style: SiteTextStyles.sBold.copyWith(color: textColor),
      ),
    );
  }
}

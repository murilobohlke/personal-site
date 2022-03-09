import 'package:flutter/material.dart';
import 'package:site/core/site_assets.dart';
import 'package:site/core/site_texts.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SiteColors.light,
      child: Column(
        children: [
          buttonWorkTogheter(),
          const SizedBox(height: 40),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(SiteAssets.imageContact),
              const SizedBox(width: 20),
              Column(
                children: [],
              )
            ],
          ),
          const SizedBox(height: 40),
          footer(),
        ],
      ),
    );
  }

  buttonWorkTogheter() => ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          primary: SiteColors.tertiary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Que tal trabalharmos juntos?',
              style: SiteTextStyles.h6BoldLight,
            ),
            const SizedBox(width: 20),
            const Icon(
              Icons.arrow_forward,
              size: 30,
              color: SiteColors.primary,
            ),
          ],
        ),
      );

  footer() => Container(
        color: SiteColors.secondaryLess,
        height: 45,
        child: Row(
          children: [
            const SizedBox(width: 50),
            Expanded(
              child: SelectableText.rich(
                TextSpan(
                  text: SiteTexts.page5footer1,
                  style: SiteTextStyles.pNormalLight,
                  children: <TextSpan>[
                    TextSpan(
                      text: SiteTexts.page5footer2,
                      style: SiteTextStyles.pBoldLight,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 50,
              child: Image.asset(
                SiteAssets.imageFlutterLogo,
              ),
            )
          ],
        ),
      );
}

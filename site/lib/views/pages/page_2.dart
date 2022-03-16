import 'package:flutter/material.dart';
import 'package:site/core/site_assets.dart';
import 'package:site/core/site_texts.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

class Page2 extends StatelessWidget {
  final bool smallPage;

  const Page2({Key? key, required this.smallPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      color: SiteColors.secondaryLess,
      child: Column(
        children: [
          SelectableText(
            'Um pouco mais sobre mim',
            style: smallPage
                ? SiteTextStyles.h5Bold.copyWith(color: SiteColors.primary)
                : SiteTextStyles.h3Bold.copyWith(color: SiteColors.primary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 60),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: SelectableText.rich(
              TextSpan(
                text: SiteTexts.page2Text1,
                style: SiteTextStyles.pNormal,
                children: <TextSpan>[
                  TextSpan(
                    text: SiteTexts.page2Text2,
                    style: SiteTextStyles.pBold,
                  ),
                  const TextSpan(text: SiteTexts.page2Text3),
                  TextSpan(
                    text: SiteTexts.page2Text4,
                    style: SiteTextStyles.pBold,
                  ),
                  const TextSpan(text: SiteTexts.page2Text5),
                  TextSpan(
                    text: SiteTexts.page2Text6,
                    style: SiteTextStyles.pBold,
                  ),
                  const TextSpan(text: SiteTexts.page2Text7),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 25),
          Image.asset(SiteAssets.imageTechnologies)
        ],
      ),
    );
  }
}

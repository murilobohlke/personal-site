import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:site/core/site_assets.dart';
import 'package:site/core/site_texts.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 250, vertical: 50),
      color: SiteColors.secondaryLess,
      child: Column(
        children: [
          title(),
          const SizedBox(height: 60),
          Row(
            children: [
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlayInterval: const Duration(seconds: 4),
                    viewportFraction: 1,
                    autoPlay: true,
                    height: 600,
                    enableInfiniteScroll: true,
                  ),
                  items: [Image.asset(SiteAssets.print)],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    text(),
                    const SizedBox(height: 50),
                    buttonGooglePlay(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  title() => SelectableText(
        'Meu portifólio',
        style: SiteTextStyles.h3Bold.copyWith(color: SiteColors.primary),
        textAlign: TextAlign.center,
      );

  text() => SelectableText.rich(
        TextSpan(
          text: SiteTexts.page4Text1,
          style: SiteTextStyles.h5Normal,
          children: <TextSpan>[
            TextSpan(
              text: SiteTexts.page4Text2,
              style: SiteTextStyles.h5Bold,
            ),
            const TextSpan(text: SiteTexts.page4Text3),
            TextSpan(
              text: SiteTexts.page4Text4,
              style: SiteTextStyles.h5Bold,
            ),
            const TextSpan(text: SiteTexts.page4Text5),
            TextSpan(
              text: SiteTexts.page4Text6,
              style: SiteTextStyles.h5Bold,
            ),
            const TextSpan(text: SiteTexts.page4Text7),
          ],
        ),
        textAlign: TextAlign.center,
      );

  buttonGooglePlay() => InkWell(
        onTap: () {},
        child: Image.asset(SiteAssets.imageGooglePlay),
      );
}

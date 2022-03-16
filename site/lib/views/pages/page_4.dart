import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:site/core/site_assets.dart';
import 'package:site/core/site_texts.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';
import 'package:site/widgets/image_card_widget.dart';

import '../../controllers/site_controller.dart';

class Page4 extends StatelessWidget {
  final bool smallPage;
  final SiteController controller;

  const Page4({Key? key, required this.smallPage, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      color: SiteColors.secondaryLess,
      child: Column(
        children: [
          title(),
          const SizedBox(height: 60),
          smallPage
              ? Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlayInterval: const Duration(seconds: 4),
                        viewportFraction: 1,
                        autoPlay: true,
                        height: 500,
                        enableInfiniteScroll: true,
                      ),
                      items: itens(),
                    ),
                    const SizedBox(height: 50),
                    text(SiteTextStyles.pNormal, SiteTextStyles.pBold),
                    const SizedBox(height: 50),
                    buttonGooglePlay(175),
                  ],
                )
              : Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlayInterval: const Duration(seconds: 4),
                          viewportFraction: 1,
                          autoPlay: true,
                          height: size.width < 800 ? 500 : 600,
                          enableInfiniteScroll: true,
                        ),
                        items: itens(),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          text(
                            SiteTextStyles.h6Normal.copyWith(height: 1.7),
                            SiteTextStyles.h6Bold.copyWith(height: 1.7),
                          ),
                          const SizedBox(height: 50),
                          buttonGooglePlay(260),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                )
        ],
      ),
    );
  }

  title() => SelectableText(
        'Meu portifólio',
        style: smallPage
            ? SiteTextStyles.h5Bold.copyWith(color: SiteColors.primary)
            : SiteTextStyles.h3Bold.copyWith(color: SiteColors.primary),
        textAlign: TextAlign.center,
      );

  text(TextStyle normal, TextStyle bold) => SelectableText.rich(
        TextSpan(
          text: SiteTexts.page4Text1,
          style: normal,
          children: <TextSpan>[
            TextSpan(
              text: SiteTexts.page4Text2,
              style: bold,
            ),
            const TextSpan(text: SiteTexts.page4Text3),
            TextSpan(
              text: SiteTexts.page4Text4,
              style: bold,
            ),
            const TextSpan(text: SiteTexts.page4Text5),
            TextSpan(
              text: SiteTexts.page4Text6,
              style: bold,
            ),
            const TextSpan(text: SiteTexts.page4Text7),
          ],
        ),
        textAlign: TextAlign.center,
      );

  buttonGooglePlay(double w) => InkWell(
        onTap: controller.launchGooglePlay,
        child: Image.asset(
          SiteAssets.imageGooglePlay,
          width: w,
        ),
      );

  itens() => const [
        ImageCardWidget('assets/prints/print-1.png'),
        ImageCardWidget('assets/prints/print-2.png'),
        ImageCardWidget('assets/prints/print-3.png'),
        ImageCardWidget('assets/prints/print-4.png'),
        ImageCardWidget('assets/prints/print-5.png'),
        ImageCardWidget('assets/prints/print-6.png'),
        ImageCardWidget('assets/prints/print-7.png'),
        ImageCardWidget('assets/prints/print-8.png'),
        ImageCardWidget('assets/prints/print-9.png'),
        ImageCardWidget('assets/prints/print-10.png'),
      ];
}

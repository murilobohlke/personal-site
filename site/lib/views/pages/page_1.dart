import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:site/core/site_assets.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

import '../../widgets/custom_text_button.dart';

class Page1 extends StatelessWidget {
  final bool smallPage;
  final VoidCallback toMeet;
  final VoidCallback about;
  final VoidCallback carrer;
  final VoidCallback portfolio;
  final VoidCallback contact;

  const Page1({
    Key? key,
    required this.smallPage,
    required this.toMeet,
    required this.about,
    required this.carrer,
    required this.portfolio,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 700),
      child: smallPage
          ? buildSmallPage()
          : Stack(
              children: [
                Image.asset(
                  SiteAssets.imageBackground,
                  height: size.height * 0.9,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                tabBar(),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Lottie.asset(
                          SiteAssets.lottieCoding,
                          height: 350,
                          width: 350,
                        ),
                        const SizedBox(height: 40),
                        SelectableText(
                          'MURILO BÖHLKE',
                          style: SiteTextStyles.h1Bold,
                        ),
                        SelectableText(
                          'Desenvolvedor Mobile',
                          style: SiteTextStyles.h4Normal,
                        ),
                        const SizedBox(height: 40),
                        ElevatedButton(
                          child: Text(
                            'Conhecer',
                            style: SiteTextStyles.h4Normal
                                .copyWith(fontWeight: FontWeight.w300),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 80,
                            ),
                            primary: SiteColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: toMeet,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  buildSmallPage() => Stack(
        children: [
          Column(
            children: [
              Image.asset(
                SiteAssets.imageBackgroundSmall,
                height: 750,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Container(
                height: 16,
                width: double.infinity,
                color: SiteColors.primaryLess,
              ),
              Container(
                height: 16,
                width: double.infinity,
                color: SiteColors.light,
              ),
            ],
          ),
          Positioned.fill(
            top: 50,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset(
                    SiteAssets.lottieCoding,
                    height: 250,
                    width: 250,
                  ),
                  const SizedBox(height: 20),
                  SelectableText(
                    'MURILO BÖHLKE',
                    style: SiteTextStyles.h3Bold
                        .copyWith(color: SiteColors.primary),
                  ),
                  SelectableText(
                    'Desenvolvedor Mobile',
                    style: SiteTextStyles.h6Normal,
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
              bottom: 80,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  child: Text(
                    'Conhecer',
                    style: SiteTextStyles.h5Normal
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 60,
                    ),
                    primary: SiteColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: toMeet,
                ),
              ))
        ],
      );

  tabBar() => Positioned(
        right: 60,
        top: 40,
        child: Row(
          children: [
            CustomTextButton(
              onPressed: about,
              label: 'SOBRE',
            ),
            const SizedBox(width: 30),
            CustomTextButton(
              onPressed: carrer,
              label: 'CARREIRA',
            ),
            const SizedBox(width: 30),
            CustomTextButton(
              onPressed: portfolio,
              label: 'PORTIFÓLIO',
            ),
            const SizedBox(width: 30),
            CustomTextButton(
              onPressed: contact,
              label: 'CONTATO',
            ),
          ],
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site/controllers/site_controller.dart';
import 'package:site/core/site_assets.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

class Page5 extends StatelessWidget {
  final bool smallPage;
  final SiteController controller;

  const Page5({Key? key, required this.smallPage, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      color: SiteColors.light,
      child: Column(
        children: [
          const SizedBox(height: 70),
          buttonWorkTogheter(),
          const SizedBox(height: 75),
          letsTalk(
            size,
            smallPage ? SiteTextStyles.h6Normal : SiteTextStyles.h5Normal,
            smallPage ? SiteTextStyles.h6Bold : SiteTextStyles.h5Bold,
          ),
          const SizedBox(height: 75),
          moreInfo(
            smallPage ? SiteTextStyles.pNormal : SiteTextStyles.h6Normal,
            smallPage ? SiteTextStyles.pBold : SiteTextStyles.h6Bold,
          ),
          const SizedBox(height: 70),
          footer(
            smallPage ? SiteTextStyles.sNormal : SiteTextStyles.pNormal,
            smallPage ? SiteTextStyles.sBold : SiteTextStyles.pBold,
          ),
        ],
      ),
    );
  }

  buttonWorkTogheter() => ElevatedButton(
        onPressed: controller.openWhatsapp,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: smallPage ? 8 : 20, horizontal: smallPage ? 15 : 30),
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
              style: smallPage ? SiteTextStyles.pBold : SiteTextStyles.h6Bold,
            ),
            SizedBox(width: smallPage ? 5 : 20),
            Icon(
              Icons.arrow_forward,
              size: smallPage ? 20 : 30,
              color: SiteColors.primary,
            ),
          ],
        ),
      );

  letsTalk(Size size, TextStyle normal, TextStyle bold) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!smallPage && size.width > 950) const Spacer(),
            if (!smallPage)
              Image.asset(
                SiteAssets.imageContact,
                width: size.width * 0.3,
                fit: BoxFit.contain,
              ),
            if (!smallPage) const Spacer(),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  SelectableText.rich(
                    TextSpan(
                      text: 'Vamos conversar? ',
                      style: bold.copyWith(color: SiteColors.primaryLess),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Entre em ',
                          style: normal.copyWith(color: SiteColors.dark),
                        ),
                        TextSpan(
                          text: 'contato',
                          style: bold.copyWith(color: SiteColors.secondaryLess),
                        ),
                        TextSpan(
                          text: ' comigo',
                          style: normal.copyWith(color: SiteColors.dark),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: SiteColors.primaryMore,
                        size: smallPage ? 30 : 50,
                      ),
                      const SizedBox(width: 10),
                      SelectableText(
                        '(53) 98428 8037',
                        style: normal.copyWith(color: SiteColors.secondary),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: SiteColors.primaryMore,
                        size: smallPage ? 30 : 50,
                      ),
                      const SizedBox(width: 10),
                      SelectableText(
                        'murilosbohlke@gmail.com',
                        style: normal.copyWith(color: SiteColors.secondary),
                      )
                    ],
                  ),
                ],
              ),
            ),
            if (size.width > 950) const Spacer(),
          ],
        ),
      );

  moreInfo(TextStyle normal, TextStyle bold) => Column(
        children: [
          SelectableText.rich(
            TextSpan(
              text: 'Mais ',
              style: normal.copyWith(color: SiteColors.dark),
              children: <TextSpan>[
                TextSpan(
                  text: 'informações',
                  style: bold.copyWith(color: SiteColors.primaryLess),
                ),
                const TextSpan(text: ' sobre mim'),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: controller.launchLinkedin,
                iconSize: smallPage ? 30 : 50,
                color: SiteColors.tertiary,
                icon: const Icon(FontAwesomeIcons.linkedin),
              ),
              SizedBox(width: smallPage ? 20 : 40),
              IconButton(
                onPressed: controller.launchFigma,
                iconSize: smallPage ? 30 : 50,
                color: SiteColors.tertiary,
                icon: const Icon(FontAwesomeIcons.figma),
              ),
              SizedBox(width: smallPage ? 20 : 40),
              IconButton(
                onPressed: controller.launchGithub,
                iconSize: smallPage ? 30 : 50,
                color: SiteColors.tertiary,
                icon: const Icon(FontAwesomeIcons.github),
              ),
            ],
          )
        ],
      );

  footer(TextStyle normal, TextStyle bold) => Container(
        color: SiteColors.secondaryLess,
        height: 45,
        child: Row(
          children: [
            const SizedBox(width: 50),
            Expanded(
              child: SelectableText.rich(
                TextSpan(
                  text: 'Feito com a elegância do ',
                  style: normal,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Flutter',
                      style: bold,
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

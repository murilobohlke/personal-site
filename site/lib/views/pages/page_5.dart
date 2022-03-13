import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site/core/site_assets.dart';
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
          const SizedBox(height: 70),
          buttonWorkTogheter(),
          const SizedBox(height: 75),
          letsTalk(),
          const SizedBox(height: 75),
          moreInfo(),
          const SizedBox(height: 70),
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
              style: SiteTextStyles.h6Bold,
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

  letsTalk() => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(SiteAssets.imageContact),
          const SizedBox(width: 30),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 35,
                child: SelectableText.rich(
                  TextSpan(
                    text: 'Vamos conversar? ',
                    style: SiteTextStyles.h4Bold
                        .copyWith(color: SiteColors.primaryLess),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Entre em ',
                        style: SiteTextStyles.h4Normal
                            .copyWith(color: SiteColors.dark),
                      ),
                      TextSpan(
                        text: 'contato',
                        style: SiteTextStyles.h4Bold
                            .copyWith(color: SiteColors.secondaryLess),
                      ),
                      TextSpan(
                        text: ' comigo',
                        style: SiteTextStyles.h4Normal
                            .copyWith(color: SiteColors.dark),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: SiteColors.primaryMore,
                    size: 50,
                  ),
                  const SizedBox(width: 10),
                  SelectableText(
                    '(53) 98428 8037',
                    style: SiteTextStyles.h5Normal
                        .copyWith(color: SiteColors.secondary),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.mail_outline,
                    color: SiteColors.primaryMore,
                    size: 50,
                  ),
                  const SizedBox(width: 10),
                  SelectableText(
                    'murilosbohlke@gmail.com',
                    style: SiteTextStyles.h5Normal
                        .copyWith(color: SiteColors.secondary),
                  )
                ],
              ),
            ],
          )
        ],
      );

  moreInfo() => Column(
        children: [
          SelectableText.rich(
            TextSpan(
              text: 'Mais ',
              style: SiteTextStyles.h5Normal.copyWith(color: SiteColors.dark),
              children: <TextSpan>[
                TextSpan(
                  text: 'informações',
                  style: SiteTextStyles.h5Bold
                      .copyWith(color: SiteColors.primaryLess),
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
                onPressed: () {},
                iconSize: 50,
                color: SiteColors.tertiary,
                icon: const Icon(FontAwesomeIcons.linkedin),
              ),
              const SizedBox(width: 40),
              IconButton(
                onPressed: () {},
                iconSize: 50,
                color: SiteColors.tertiary,
                icon: const Icon(FontAwesomeIcons.figma),
              ),
              const SizedBox(width: 40),
              IconButton(
                onPressed: () {},
                iconSize: 50,
                color: SiteColors.tertiary,
                icon: const Icon(FontAwesomeIcons.github),
              ),
            ],
          )
        ],
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
                  text: 'Feito com a elegância do ',
                  style: SiteTextStyles.pNormal,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Flutter',
                      style: SiteTextStyles.pBold,
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

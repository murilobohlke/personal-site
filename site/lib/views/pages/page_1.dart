import 'package:flutter/material.dart';
import 'package:site/core/site_assets.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

import '../../widgets/custom_text_button.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 700),
      child: Stack(
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
                  SelectableText(
                    'MURILO BÖHLKE',
                    style: SiteTextStyles.h1Bold,
                  ),
                  const SizedBox(height: 10),
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
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  tabBar() => Positioned(
        right: 60,
        top: 40,
        child: Row(
          children: [
            CustomTextButton(
              onPressed: () {},
              label: 'SOBRE',
            ),
            const SizedBox(width: 60),
            CustomTextButton(
              onPressed: () {},
              label: 'CARREIRA',
            ),
            const SizedBox(width: 60),
            CustomTextButton(
              onPressed: () {},
              label: 'PORTIFÓLIO',
            ),
            const SizedBox(width: 60),
            CustomTextButton(
              onPressed: () {},
              label: 'CONTATO',
            ),
          ],
        ),
      );
}

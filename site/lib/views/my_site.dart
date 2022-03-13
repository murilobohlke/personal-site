import 'package:flutter/material.dart';
import 'package:site/helpers/responsive_helper.dart';
import 'package:site/views/pages/page_1.dart';
import 'package:site/views/pages/page_2.dart';
import 'package:site/views/pages/page_3.dart';
import 'package:site/views/pages/page_4.dart';
import 'package:site/views/pages/page_5.dart';

class MySite extends StatelessWidget {
  const MySite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Page1(smallPage: ResponsiveHelper.isSmallScreen(context)),
          const Page2(),
          Page3(smallPage: ResponsiveHelper.isSmallScreen(context)),
          Page4(smallPage: ResponsiveHelper.isSmallScreen(context)),
          Page5(smallPage: ResponsiveHelper.isSmallScreen(context)),
        ],
      ),
    );
  }
}

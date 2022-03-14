import 'package:flutter/material.dart';
import 'package:site/controllers/site_controller.dart';
import 'package:site/helpers/responsive_helper.dart';
import 'package:site/views/pages/page_1.dart';
import 'package:site/views/pages/page_2.dart';
import 'package:site/views/pages/page_3.dart';
import 'package:site/views/pages/page_4.dart';
import 'package:site/views/pages/page_5.dart';

class MySite extends StatefulWidget {
  const MySite({Key? key}) : super(key: key);

  @override
  State<MySite> createState() => _MySiteState();
}

class _MySiteState extends State<MySite> {
  late SiteController controller;

  @override
  void initState() {
    controller = SiteController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Page1(smallPage: ResponsiveHelper.isSmallScreen(context)),
          Page2(smallPage: ResponsiveHelper.isSmallScreen(context)),
          Page3(smallPage: ResponsiveHelper.isSmallScreen(context)),
          Page4(
            controller: controller,
            smallPage: ResponsiveHelper.isSmallScreen(context),
          ),
          Page5(
            controller: controller,
            smallPage: ResponsiveHelper.isSmallScreen(context),
          ),
        ],
      ),
    );
  }
}

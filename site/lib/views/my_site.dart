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
  final aboutKey = GlobalKey();
  final carrerKey = GlobalKey();
  final portfolioKey = GlobalKey();
  final contactKey = GlobalKey();

  late SiteController controller;

  @override
  void initState() {
    controller = SiteController();

    super.initState();
  }

  void toMeet() => Scrollable.ensureVisible(
        aboutKey.currentContext!,
        curve: Curves.ease,
        duration: const Duration(milliseconds: 500),
      );

  void toCarrer() => Scrollable.ensureVisible(
        carrerKey.currentContext!,
        curve: Curves.ease,
        duration: const Duration(milliseconds: 500),
      );
  void toPortfolio() => Scrollable.ensureVisible(
        portfolioKey.currentContext!,
        curve: Curves.ease,
        duration: const Duration(milliseconds: 500),
      );
  void toContact() => Scrollable.ensureVisible(
        contactKey.currentContext!,
        curve: Curves.ease,
        duration: const Duration(milliseconds: 500),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Page1(
            smallPage: ResponsiveHelper.isSmallScreen(context),
            toMeet: toMeet,
            about: toMeet,
            carrer: toCarrer,
            portfolio: toPortfolio,
            contact: toContact,
          ),
          Page2(
            key: aboutKey,
            smallPage: ResponsiveHelper.isSmallScreen(context),
          ),
          Page3(
            key: carrerKey,
            smallPage: ResponsiveHelper.isSmallScreen(context),
          ),
          Page4(
            key: portfolioKey,
            controller: controller,
            smallPage: ResponsiveHelper.isSmallScreen(context),
          ),
          Page5(
            key: contactKey,
            controller: controller,
            smallPage: ResponsiveHelper.isSmallScreen(context),
          ),
        ],
      ),
    );
  }
}

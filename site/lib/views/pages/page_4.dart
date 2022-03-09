import 'package:flutter/material.dart';
import 'package:site/theme/site_colors.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      width: double.infinity,
      color: SiteColors.secondaryLess,
      child: Column(
        children: const [
          Text('oi'),
        ],
      ),
    );
  }
}

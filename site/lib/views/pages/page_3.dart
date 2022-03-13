import 'package:flutter/material.dart';
import 'package:site/data/dummy/job_dummy.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/widgets/indicator_widget.dart';
import 'package:site/widgets/job_widget.dart';

import '../../theme/site_text_styles.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      color: SiteColors.light,
      child: Column(
        children: [
          title(),
          const SizedBox(height: 5),
          blueBar(),
          const SizedBox(height: 40),
          SizedBox(
            width: 1200,
            height: 900,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Row(
                    children: [
                      JobWidget(jobDummy[0]),
                      const IndicatorWidget(number: '1'),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 250,
                  child: Row(
                    children: [
                      const IndicatorWidget(number: '2'),
                      const SizedBox(width: 20),
                      JobWidget(jobDummy[1]),
                    ],
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 0,
                  child: Row(
                    children: [
                      JobWidget(jobDummy[2]),
                      const IndicatorWidget(
                        number: '3',
                        background: SiteColors.primary,
                        textColor: SiteColors.secondary,
                      ),
                    ],
                  ),
                ),
                // Positioned.fill(
                //   child: Align(
                //     alignment: Alignment.center,
                //     child: Container(
                //       width: 300,
                //       height: 700,
                //       color: Colors.red.shade100,
                //       child: Stack(
                //         children: [
                //           Transform.rotate(
                //             angle: 0.52,
                //             child: const DottedLine(
                //               direction: Axis.horizontal,
                //               lineLength: double.infinity,
                //               lineThickness: 3,
                //               dashLength: 15,
                //               dashColor: SiteColors.secondaryLess,
                //               dashRadius: 5,
                //               dashGapLength: 10,
                //               dashGapColor: Colors.transparent,
                //               dashGapRadius: 0.0,
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  title() => SelectableText(
        'Minha Carreira',
        style: SiteTextStyles.h3Bold.copyWith(color: SiteColors.secondaryLess),
        textAlign: TextAlign.center,
      );

  blueBar() => Container(
        height: 8,
        width: 180,
        decoration: BoxDecoration(
            color: SiteColors.primaryLess,
            borderRadius: BorderRadius.circular(5)),
      );
}

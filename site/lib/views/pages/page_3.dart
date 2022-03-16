import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:site/data/dto/job_dto.dart';
import 'package:site/data/dummy/job_dummy.dart';
import 'package:site/helpers/text_height_helper.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/widgets/indicator_widget.dart';
import 'package:site/widgets/job_widget.dart';

import '../../theme/site_text_styles.dart';

class Page3 extends StatelessWidget {
  final double baseLineLength = 700;
  final bool smallPage;

  const Page3({Key? key, required this.smallPage}) : super(key: key);

  double getTextHeight(JobDto job, double width, TextStyle style) {
    final constraints = BoxConstraints(
      maxWidth: width,
      minHeight: 0.0,
      minWidth: 0.0,
    );

    RenderParagraph renderParagraph = RenderParagraph(
      TextSpan(
        text: job.description,
        style: style,
      ),
      textDirection: TextDirection.ltr,
    );

    renderParagraph.layout(constraints);

    return renderParagraph.getMaxIntrinsicHeight(width).ceilToDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      color: SiteColors.light,
      child: Column(
        children: [
          title(),
          const SizedBox(height: 5),
          blueBar(),
          const SizedBox(height: 40),
          smallPage ? carrerSmallPage(context) : carrerLargePage(),
        ],
      ),
    );
  }

  title() => SelectableText(
        'Minha Carreira',
        style: smallPage
            ? SiteTextStyles.h5Bold.copyWith(color: SiteColors.primary)
            : SiteTextStyles.h3Bold.copyWith(color: SiteColors.primary),
        textAlign: TextAlign.center,
      );

  blueBar() => Container(
        height: smallPage ? 4 : 8,
        width: smallPage ? 100 : 180,
        decoration: BoxDecoration(
            color: SiteColors.primaryLess,
            borderRadius: BorderRadius.circular(5)),
      );

  carrerSmallPage(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 20;

    double lineLength = baseLineLength +
        TextHeightHelper.textHeight(
          jobDummy[0].description,
          width,
          SiteTextStyles.pNormal,
        ) +
        TextHeightHelper.textHeight(
          jobDummy[1].description,
          width,
          SiteTextStyles.pNormal,
        ) +
        TextHeightHelper.textHeight(
          jobDummy[2].description,
          width,
          SiteTextStyles.pNormal,
        );

    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Positioned(
          left: 12.5,
          top: 0,
          child: DottedLine(
            direction: Axis.vertical,
            lineLength: lineLength,
            lineThickness: 3,
            dashLength: 15,
            dashColor: SiteColors.secondaryLess,
            dashRadius: 5,
            dashGapLength: 10,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                children: [
                  const IndicatorWidget(number: '1'),
                  const SizedBox(width: 25),
                  Expanded(child: JobWidget(jobDummy[0], smallPage: true)),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              child: Row(
                children: [
                  const IndicatorWidget(number: '2'),
                  const SizedBox(width: 25),
                  Expanded(child: JobWidget(jobDummy[1], smallPage: true)),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              child: Row(
                children: [
                  const IndicatorWidget(number: '3', isActive: true),
                  const SizedBox(width: 25),
                  Expanded(child: JobWidget(jobDummy[2], smallPage: true)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  carrerLargePage() => SizedBox(
        width: 900,
        height: 875,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Row(
                children: [
                  const IndicatorWidget(number: '1'),
                  const SizedBox(width: 15),
                  JobWidget(jobDummy[0]),
                ],
              ),
            ),
            Positioned(
              top: 200,
              right: 0,
              child: Row(
                children: [
                  const IndicatorWidget(number: '2'),
                  const SizedBox(width: 15),
                  JobWidget(jobDummy[1]),
                ],
              ),
            ),
            Positioned(
              left: 80,
              top: 425,
              child: Row(
                children: [
                  const IndicatorWidget(
                    number: '3',
                    isActive: true,
                  ),
                  const SizedBox(width: 15),
                  JobWidget(jobDummy[2]),
                ],
              ),
            ),
          ],
        ),
      );
}

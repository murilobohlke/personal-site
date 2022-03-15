import 'package:flutter/material.dart';
import 'package:site/data/dto/job_dto.dart';
import 'package:site/theme/site_colors.dart';
import 'package:site/theme/site_text_styles.dart';

class JobWidget extends StatelessWidget {
  final JobDto job;
  final bool smallPage;

  const JobWidget(this.job, {Key? key, this.smallPage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width < 800 && !smallPage ? 320 : 375,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: smallPage ? Alignment.centerLeft : Alignment.center,
            child: Image.asset(
              job.imageAsset,
              width: smallPage ? 60 : 100,
            ),
          ),
          const SizedBox(height: 8),
          SelectableText(
            job.company,
            style:
                SiteTextStyles.h6Bold.copyWith(color: SiteColors.primaryMore),
          ),
          const SizedBox(height: 8),
          SelectableText(
            job.profession,
            style: SiteTextStyles.pNormal
                .copyWith(color: SiteColors.secondaryLess),
          ),
          SelectableText(
            job.time,
            style: SiteTextStyles.sBold.copyWith(color: SiteColors.tertiary),
          ),
          const SizedBox(height: 8),
          SelectableText(
            job.description,
            style: SiteTextStyles.pNormal.copyWith(color: SiteColors.dark),
          ),
        ],
      ),
    );
  }
}

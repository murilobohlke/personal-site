import 'package:flutter/material.dart';

import '../theme/site_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomTextButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          label,
          style: SiteTextStyles.h6Bold,
        ),
      ),
    );
  }
}

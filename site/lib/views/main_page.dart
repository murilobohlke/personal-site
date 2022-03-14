import 'package:flutter/material.dart';
import 'package:site/helpers/responsive_helper.dart';
import 'package:site/views/my_site.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ResponsiveHelper.isMinimumScreen(context)
            ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 375,
                    minWidth: 375,
                  ),
                  child: const MySite(),
                ),
              )
            : const MySite(),
      ),
    );
  }
}

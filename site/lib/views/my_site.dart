import 'package:flutter/material.dart';
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
        children: const [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
          Page5(),
        ],
      ),
    );
  }
}

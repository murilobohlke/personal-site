import 'package:flutter/material.dart';
import 'package:site/views/my_site.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MySite(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        children: const [
          Text('oi'),
        ],
      ),
    );
  }
}

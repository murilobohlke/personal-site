import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  final String path;

  const ImageCardWidget(
    this.path, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}

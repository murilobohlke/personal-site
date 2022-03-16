import 'package:flutter/rendering.dart';

class TextHeightHelper {
  static double textHeight(String text, double width, TextStyle style) {
    final constraints = BoxConstraints(
      maxWidth: width,
      minHeight: 0.0,
      minWidth: 0.0,
    );

    RenderParagraph renderParagraph = RenderParagraph(
      TextSpan(
        text: text,
        style: style,
      ),
      textDirection: TextDirection.ltr,
    );

    renderParagraph.layout(constraints);

    return renderParagraph.getMaxIntrinsicHeight(width).ceilToDouble();
  }
}

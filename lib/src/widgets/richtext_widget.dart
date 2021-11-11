import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  /// The RichTextWidget widget displays a font-weight of a feature with it's
  /// respective value.
  ///
  /// Requires parameters like textBold and addProperty.

  final String textBold;
  final String addProperty;

  const RichTextWidget({
    Key? key,
    required this.textBold,
    required this.addProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: RichText(
          text: TextSpan(
              text: textBold,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              children: [
            TextSpan(
              text: addProperty,
              style: DefaultTextStyle.of(context).style,
            )
          ])),
    );
  }
}

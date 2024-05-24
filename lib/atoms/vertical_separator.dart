import 'package:flutter/material.dart';

class VerticalSeparator extends StatelessWidget {
  const VerticalSeparator({
    super.key,
    required this.text,
    this.textColor,
    this.dividerColor,
  });

  final String text;
  final Color? textColor;
  final Color? dividerColor;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(child: Divider(color: dividerColor ?? Colors.white)),
      const SizedBox(width: 10),
      Text(text, style: TextStyle(color: textColor ?? Colors.black)),
      const SizedBox(width: 10),
      Expanded(child: Divider(color: dividerColor ?? Colors.white)),
    ]);
  }
}

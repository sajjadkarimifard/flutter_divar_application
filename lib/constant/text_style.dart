import 'package:flutter/material.dart';

class Apptext_Bold extends StatelessWidget {
  const Apptext_Bold(this.text, this.color, this.textAlign, {super.key});
  final String text;
  final Color color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: color,
        fontFamily: 'SB',
      ),
    );
  }
}

class Apptext_Medium extends StatelessWidget {
  const Apptext_Medium(this.text, this.color, this.textAlign, {super.key});
  final String text;
  final Color color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 14,
        color: color,
        fontFamily: 'SM',
      ),
    );
  }
}

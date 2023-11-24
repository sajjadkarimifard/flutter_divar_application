import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';

class Containerbotton extends StatelessWidget {
  const Containerbotton(this.text, this.iconvisinle, {super.key});
  final String text;
  final bool iconvisinle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: CustomColor.redcolor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Apptext_Bold(text, Colors.white, TextAlign.center),
          Visibility(
            visible: iconvisinle,
            child: Image.asset(
              'assets/images/arrow-left.png',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';

class recentlySaleAdBox extends StatelessWidget {
  const recentlySaleAdBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 16, bottom: 30, right: 16),
      height: 139,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: CustomColor.greyContainer,
            blurRadius: 20,
            spreadRadius: -12,
            offset: Offset(20, 20),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 111,
            height: 107,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/ads.png'),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 185,
            height: 107,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Apptext_Bold(
                  'ویلا ۵۰۰ متری زیر قیمت',
                  Colors.black,
                  TextAlign.left,
                ),
                SizedBox(height: 8),
                Apptext_Medium(
                  'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
                  CustomColor.greyText,
                  TextAlign.end,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Apptext_Bold(
                      '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
                      CustomColor.redcolor,
                      TextAlign.left,
                    ),
                    Apptext_Bold(
                      'قیمت',
                      Colors.black,
                      TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

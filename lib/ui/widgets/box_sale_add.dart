import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/screens/sale_ad_property.dart';

class BoxHotSaleAd extends StatelessWidget {
  const BoxHotSaleAd({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SaleAdProperty();
            },
          ),
        );
      },
      child: Container(
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
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(left: 16, bottom: 10),
        height: 267,
        width: 224,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 192,
              height: 112,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/images/ads.png'),
                ),
              ),
            ),
            SizedBox(height: 16),
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
    );
  }
}

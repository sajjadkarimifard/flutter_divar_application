import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/main.dart';
import 'package:flutter_divar_application/ui/widgets/container_botton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 56),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 8),
                  Apptext_Bold(
                    'خوش اومدی به ',
                    Colors.black,
                    TextAlign.end,
                  ),
                  Image.asset('assets/images/logo_aviz.png'),
                ],
              ),
              SizedBox(height: 16),
              Apptext_Medium(
                'این فوق العادست که آویزو برای آگهی هات انتخاب کردی!',
                CustomColor.greyText,
                TextAlign.end,
              ),
              SizedBox(height: 32),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: CustomColor.greyContainer,
                ),
                child: TextField(
                  style:
                      TextStyle(fontFamily: 'SB', color: CustomColor.greyText),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hoverColor: CustomColor.greyText,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'نام و نام خانوادگی',
                    hintStyle: TextStyle(
                      fontFamily: 'SB',
                      fontSize: 16,
                      color: CustomColor.greyText,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: CustomColor.greyContainer,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style:
                      TextStyle(fontFamily: 'SB', color: CustomColor.greyText),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hoverColor: CustomColor.greyText,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'شماره موبایل',
                    hintStyle: TextStyle(
                      fontFamily: 'SB',
                      fontSize: 16,
                      color: CustomColor.greyText,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BottomNav();
                        },
                      ),
                    );
                  },
                  child: Containerbotton('مرحله بعد', true)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Apptext_Medium(
                    'قبلا ثبت نام نکردی؟',
                    CustomColor.greyText,
                    TextAlign.center,
                  ),
                  SizedBox(width: 5),
                  Apptext_Medium(
                    'ورود',
                    CustomColor.redcolor,
                    TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

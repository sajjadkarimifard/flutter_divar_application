import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/screens/get_message_cod_screen.dart';
import 'package:flutter_divar_application/ui/widgets/container_botton.dart';

class ImportNumberScreen extends StatelessWidget {
  const ImportNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 76),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Apptext_Bold(' ورود به', Colors.black, TextAlign.end),
                  Image.asset('assets/images/logo_aviz.png'),
                ],
              ),
              SizedBox(height: 16),
              Apptext_Medium(
                'خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!',
                CustomColor.greyText,
                TextAlign.start,
              ),
              SizedBox(height: 32),
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
              SizedBox(
                height: 16,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GetMessageCodeScreen();
                        },
                      ),
                    );
                  },
                  child: Containerbotton('مرحله بعد', true)),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Apptext_Medium(
                    'تاحالا ثبت نام نکردی؟',
                    CustomColor.greyText,
                    TextAlign.center,
                  ),
                  SizedBox(width: 5),
                  Apptext_Medium(
                    'ثبت نام',
                    CustomColor.redcolor,
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

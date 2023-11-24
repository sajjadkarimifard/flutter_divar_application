import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/widgets/checkbox.dart';
import 'package:flutter_divar_application/ui/widgets/container_botton.dart';

class StePropertyScreen extends StatelessWidget {
  const StePropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/images/close-square.png'),
        title: Image.asset('assets/images/category.png'),
        centerTitle: true,
        actions: [
          Image.asset('assets/images/arrow-right.png'),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Apptext_Bold('تصویر آویز', Colors.black, TextAlign.end),
                  SizedBox(width: 8),
                  Image.asset('assets/images/camera.png'),
                ],
              ),
              SizedBox(height: 24),
              DottedBorder(
                strokeWidth: 1,
                color: CustomColor.greyContainer,
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 41),
                        Apptext_Medium(
                          'لطفا تصویر آویز خود را بارگذاری کنید',
                          CustomColor.greyText,
                          TextAlign.center,
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 149,
                          height: 40,
                          decoration: BoxDecoration(
                            color: CustomColor.redcolor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Apptext_Bold(
                                  'انتخاب تصویر',
                                  Colors.white,
                                  TextAlign.center,
                                ),
                                Spacer(),
                                Image.asset(
                                    'assets/images/document-upload.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Apptext_Bold('عنوان آویز', Colors.black, TextAlign.end),
                  SizedBox(width: 8),
                  Image.asset('assets/images/edit-2.png'),
                ],
              ),
              SizedBox(height: 24),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 48,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CustomColor.greyContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'SB',
                        color: CustomColor.greyText,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 7),
                        hoverColor: CustomColor.greyText,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'عنوان آویز را وارد کنید',
                        hintStyle: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 16,
                          color: CustomColor.greyText,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Apptext_Bold('توضیحات', Colors.black, TextAlign.end),
                  SizedBox(width: 8),
                  Image.asset('assets/images/clipboard.png'),
                ],
              ),
              SizedBox(height: 24),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 104,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CustomColor.greyContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: TextField(
                      maxLines: 4,
                      style: TextStyle(
                        fontFamily: 'SB',
                        color: CustomColor.greyText,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 7),
                        hoverColor: CustomColor.greyText,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'توضیحات آویز را وارد کنید ...',
                        hintStyle: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 16,
                          color: CustomColor.greyText,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.only(bottom: 27),
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    AnimatedCheckbox(),
                    Spacer(),
                    Apptext_Bold(
                      'فعال کردن گفتگو',
                      Colors.black,
                      TextAlign.end,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.only(bottom: 27),
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    AnimatedCheckbox(),
                    Spacer(),
                    Apptext_Bold(
                      'فعال کردن تماس',
                      Colors.black,
                      TextAlign.end,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Containerbotton('ثبت آگهی', false),
            ],
          ),
        ),
      ),
    );
  }
}

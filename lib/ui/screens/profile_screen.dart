import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/images/my_aviz.png'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 32),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: CustomColor.greyContainer,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icon_search.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'SB', color: CustomColor.greyText),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hoverColor: CustomColor.greyText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'جستجو...',
                            hintStyle: TextStyle(
                              fontFamily: 'SB',
                              fontSize: 16,
                              color: CustomColor.greyText,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Apptext_Bold('حساب کاربری', Colors.black, TextAlign.end),
                  SizedBox(width: 12),
                  Image.asset('assets/images/profile.png'),
                ],
              ),
              Container(
                height: 95,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(top: 24, bottom: 64),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: CustomColor.greyContainer,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/edit.png'),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Apptext_Bold(
                          'سید محمد جواد هاشمی',
                          Colors.black,
                          TextAlign.end,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 26,
                              width: 66,
                              decoration: BoxDecoration(
                                color: CustomColor.redcolor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Apptext_Medium(
                                  'تایید شده',
                                  Colors.white,
                                  TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Apptext_Medium(
                              '۰۹۱۱۷۵۴۰۱۴۵',
                              Colors.black,
                              TextAlign.end,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Center(
                      child: SizedBox(
                        width: 56,
                        height: 56,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/images/Vector.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/arrow-left.png',
                      color: CustomColor.greyContainer,
                    ),
                    Spacer(),
                    Apptext_Bold(
                      'آگهی های من',
                      Colors.black,
                      TextAlign.end,
                    ),
                    SizedBox(width: 12),
                    Image.asset('assets/images/note-2.png'),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/arrow-left.png',
                      color: CustomColor.greyContainer,
                    ),
                    Spacer(),
                    Apptext_Bold(
                      'پرداخت های من',
                      Colors.black,
                      TextAlign.end,
                    ),
                    SizedBox(width: 12),
                    Image.asset('assets/images/card.png'),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/arrow-left.png',
                      color: CustomColor.greyContainer,
                    ),
                    Spacer(),
                    Apptext_Bold(
                      'بازدید های اخیر',
                      Colors.black,
                      TextAlign.end,
                    ),
                    SizedBox(width: 12),
                    Image.asset('assets/images/eye.png'),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/arrow-left.png',
                      color: CustomColor.greyContainer,
                    ),
                    Spacer(),
                    Apptext_Bold(
                      'ذخیره شده ها',
                      Colors.black,
                      TextAlign.end,
                    ),
                    SizedBox(width: 12),
                    Image.asset('assets/images/save-2.png'),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/arrow-left.png',
                      color: CustomColor.greyContainer,
                    ),
                    Spacer(),
                    Apptext_Bold(
                      'تنظیمات',
                      Colors.black,
                      TextAlign.end,
                    ),
                    SizedBox(width: 12),
                    Image.asset('assets/images/setting.png'),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/arrow-left.png',
                      color: CustomColor.greyContainer,
                    ),
                    Spacer(),
                    Apptext_Bold(
                      'پشتیبانی و قوانین',
                      Colors.black,
                      TextAlign.end,
                    ),
                    SizedBox(width: 12),
                    Image.asset('assets/images/message-question.png'),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: CustomColor.greyContainer,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/arrow-left.png',
                      color: CustomColor.greyContainer,
                    ),
                    Spacer(),
                    Apptext_Bold(
                      'درباره آویز',
                      Colors.black,
                      TextAlign.end,
                    ),
                    SizedBox(width: 12),
                    Image.asset('assets/images/info-circle.png'),
                  ],
                ),
              ),
              Apptext_Medium(
                'نسخه',
                CustomColor.greyText,
                TextAlign.center,
              ),
              Apptext_Medium(
                '۱.۵.۹',
                CustomColor.greyText,
                TextAlign.center,
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

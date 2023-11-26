import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/screens/set_location_screen.dart';
import 'package:flutter_divar_application/ui/widgets/checkbox.dart';
import 'package:flutter_divar_application/ui/widgets/container_botton.dart';

class RegisterSaleAdScreen extends StatelessWidget {
  const RegisterSaleAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Image.asset('assets/images/close-square.png'),
            title: Image.asset('assets/images/icon_register_add.png'),
            centerTitle: true,
            actions: [
              Image.asset('assets/images/arrow-right.png'),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 32,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Apptext_Bold(
                    'انتخاب دسته بندی آویز',
                    Colors.black,
                    TextAlign.start,
                  ),
                  SizedBox(width: 8),
                  Image.asset('assets/images/icon_category.png'),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 32,
                right: 16,
                left: 16,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Apptext_Medium(
                        'محدوده ملک',
                        CustomColor.greyText,
                        TextAlign.start,
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Apptext_Medium(
                        'دسته بندی',
                        CustomColor.greyText,
                        TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 159,
                        height: 48,
                        decoration: BoxDecoration(
                          color: CustomColor.greyContainer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Apptext_Bold(
                            'خیابان صیاد شیرازی',
                            CustomColor.greyText,
                            TextAlign.start,
                          ),
                        ),
                      ),
                      Container(
                        width: 159,
                        height: 48,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: CustomColor.greyContainer,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/arrow-down.png'),
                            Apptext_Bold(
                              'فروش آپارتمان',
                              Colors.black,
                              TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 64),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Apptext_Bold('ویژگی ها', Colors.black, TextAlign.end),
                      SizedBox(width: 8),
                      Image.asset('assets/images/icon_clipboard.png'),
                    ],
                  ),
                  SizedBox(height: 32),
                  Wrap(
                    spacing: 40,
                    runSpacing: 24,
                    children: [
                      Property_widget(),
                      Property_widget(),
                      Property_widget(),
                      Property_widget(),
                    ],
                  ),
                  SizedBox(height: 64),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Apptext_Bold('امکانات', Colors.black, TextAlign.end),
                      SizedBox(width: 8),
                      Image.asset('assets/images/magicpen.png'),
                    ],
                  ),
                  SizedBox(height: 24),
                  PossibilitiesContainer(),
                  PossibilitiesContainer(),
                  PossibilitiesContainer(),
                  SizedBox(height: 32),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SetLocationScreen();
                            },
                          ),
                        );
                      },
                      child: Containerbotton('بعدی', false)),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Property_widget extends StatelessWidget {
  const Property_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Apptext_Medium(
          'متراژ',
          CustomColor.greyText,
          TextAlign.start,
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(12),
          width: 159,
          height: 48,
          decoration: BoxDecoration(
            color: CustomColor.greyContainer,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Image.asset('assets/images/icon_count.png'),
              Spacer(),
              Apptext_Bold(
                '6',
                CustomColor.greyText,
                TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PossibilitiesContainer extends StatelessWidget {
  const PossibilitiesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'آسانسور',
            Colors.black,
            TextAlign.end,
          ),
        ],
      ),
    );
  }
}

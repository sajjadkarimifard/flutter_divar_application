import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';

class SaleAdProperty extends StatefulWidget {
  const SaleAdProperty({super.key});

  @override
  State<SaleAdProperty> createState() => _SaleAdPropertyState();
}

List<String> properties = [
  'توضیحات',
  'ویژگی ها و امکانات',
  'قیمت',
  'مشخصات',
];
bool propertie = false;
bool price = false;
bool ability = false;
bool description = false;

class _SaleAdPropertyState extends State<SaleAdProperty> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leadingWidth: 300,
            actions: [
              Image.asset('assets/images/arrow-right.png'),
            ],
            leading: Row(
              children: [
                SizedBox(width: 16),
                Image.asset('assets/images/save.png'),
                SizedBox(width: 24),
                Image.asset('assets/images/share.png'),
                SizedBox(width: 24),
                Image.asset('assets/images/information.png'),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset(
                          'assets/images/frame34.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Apptext_Medium(
                          '۱۶ دقیقه پیش در گرگان',
                          CustomColor.greyText,
                          TextAlign.end,
                        ),
                      ),
                      Apptext_Medium(
                        'آپارتمان',
                        Colors.black,
                        TextAlign.end,
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Apptext_Bold(
                    'آپارتمان ۵۰۰ متری در صیاد شیرازی',
                    Colors.black,
                    TextAlign.end,
                  ),
                  SizedBox(height: 64),
                  Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
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
                          color: CustomColor.greyText,
                        ),
                        Spacer(),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Apptext_Bold(
                            'هشدار های قبل از معامله!',
                            Colors.black,
                            TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: properties.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                              getWidget(selectedIndex);
                            });
                          },
                          child: Container(
                            height: 30,
                            margin: EdgeInsets.only(left: 8, right: 8),
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: (index == selectedIndex) ? 0 : 1,
                                color: CustomColor.greyContainer,
                              ),
                              color: (index == selectedIndex)
                                  ? CustomColor.redcolor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Apptext_Medium(
                              properties[index],
                              (index == selectedIndex)
                                  ? Colors.white
                                  : CustomColor.redcolor,
                              TextAlign.end,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  getWidget(selectedIndex),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          color: CustomColor.redcolor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Apptext_Bold(
                              'اطلاعات تماس',
                              Colors.white,
                              TextAlign.end,
                            ),
                            SizedBox(width: 12),
                            Image.asset('assets/images/call.png'),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          color: CustomColor.redcolor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Apptext_Bold(
                              'گفتگو',
                              Colors.white,
                              TextAlign.end,
                            ),
                            SizedBox(width: 12),
                            Image.asset('assets/images/message.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget getWidget(int index) {
  switch (index) {
    case 3:
      return PropertyWidget();
    case 2:
      return PriceWidget();
    case 1:
      return PossibilitiesWidget();
    case 0:
      return DescriptionWidget();
    default:
      return PropertyWidget();
  }
}

class PossibilitiesWidget extends StatelessWidget {
  const PossibilitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Apptext_Bold('ویژگی ها', Colors.black, TextAlign.end),
              SizedBox(width: 8),
              Image.asset('assets/images/icon_clipboard.png'),
            ],
          ),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.only(bottom: 32, top: 24),
            padding: EdgeInsets.all(16),
            height: 112,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1,
                color: CustomColor.greyContainer,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Apptext_Medium(
                      'تک برگ',
                      CustomColor.greyText,
                      TextAlign.end,
                    ),
                    Apptext_Medium(
                      'سند',
                      CustomColor.greyText,
                      TextAlign.end,
                    ),
                  ],
                ),
                DottedLine(
                  lineThickness: 1,
                  dashColor: CustomColor.greyContainer,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Apptext_Medium(
                      'شمالی',
                      CustomColor.greyText,
                      TextAlign.end,
                    ),
                    Apptext_Medium(
                      'جهت ساختمان',
                      CustomColor.greyText,
                      TextAlign.end,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Apptext_Bold('امکانات', Colors.black, TextAlign.end),
              SizedBox(width: 8),
              Image.asset('assets/images/magicpen.png'),
            ],
          ),
          SizedBox(height: 32),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 392,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1,
                color: CustomColor.greyContainer,
              ),
            ),
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 56,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      Apptext_Medium(
                        'آسانسور',
                        CustomColor.greyText,
                        TextAlign.end,
                      ),
                      Spacer(),
                      DottedLine(
                        dashColor: CustomColor.greyContainer,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: SizedBox(
        height: 70,
        child: Apptext_Medium(
          'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.',
          CustomColor.greyText,
          TextAlign.end,
        ),
      ),
    );
  }
}

class PropertyWidget extends StatelessWidget {
  const PropertyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 98,
          margin: EdgeInsets.only(top: 32),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: CustomColor.greyContainer,
              width: 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Apptext_Medium('ساخت', CustomColor.greyText, TextAlign.end),
                  Apptext_Medium('1402', Colors.black, TextAlign.end),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Apptext_Medium('طبقه', CustomColor.greyText, TextAlign.end),
                  Apptext_Medium('دوبلکس', Colors.black, TextAlign.end),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Apptext_Medium('اتاق', CustomColor.greyText, TextAlign.end),
                  Apptext_Medium('۶', Colors.black, TextAlign.end),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Apptext_Medium('متراژ', CustomColor.greyText, TextAlign.end),
                  Apptext_Medium('۵۰۰', Colors.black, TextAlign.end),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Apptext_Bold('موقعیت مکانی', Colors.black, TextAlign.end),
            SizedBox(width: 8),
            Image.asset('assets/images/icon_map.png'),
          ],
        ),
        SizedBox(height: 24),
        Container(
          height: 134,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: CustomColor.greyContainer,
          ),
          child: Center(
            child: Container(
              width: 185,
              height: 40,
              decoration: BoxDecoration(
                color: CustomColor.redcolor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Apptext_Bold(
                  '... گرگان ,صیادشیرازی',
                  Colors.white,
                  TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: CustomColor.greyContainer,
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Apptext_Bold('قیمت هر متر:', Colors.black, TextAlign.end),
                Apptext_Bold('۴۶٬۴۶۰٬۰۰۰', Colors.black, TextAlign.end),
              ],
            ),
            DottedLine(
              lineThickness: 1,
              dashColor: CustomColor.greyContainer,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Apptext_Bold('قیمت کل:', Colors.black, TextAlign.end),
                Apptext_Bold('۲۳٬۲۳۰٬۰۰۰٬۰۰۰', Colors.black, TextAlign.end),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

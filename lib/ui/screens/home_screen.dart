import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/widgets/hot_box_sale_ad.dart';
import 'package:flutter_divar_application/ui/widgets/recently_box_sale_add.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: CustomColor.greyContainer,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            title: Image.asset('assets/images/logo_aviz.png'),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Apptext_Medium(
                    'مشاهده همه',
                    CustomColor.greyText,
                    TextAlign.end,
                  ),
                  Spacer(),
                  Apptext_Bold(
                    'آویز های داغ',
                    Colors.black,
                    TextAlign.end,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              right: 16,
              bottom: 32,
              top: 24,
            ),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 277,
                width: 224,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return BoxHotSaleAd();
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Apptext_Medium(
                    'مشاهده همه',
                    CustomColor.greyText,
                    TextAlign.end,
                  ),
                  Spacer(),
                  Apptext_Bold(
                    'آویز های اخیر',
                    Colors.black,
                    TextAlign.end,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 365,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return recentlySaleAdBox();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

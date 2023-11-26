import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/screens/register_sale_ad_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
        padding: EdgeInsets.only(top: 36),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterSaleAdScreen();
                    },
                  ),
                );
              },
              child: Container(
                height: 40,
                margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
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
                    Image.asset('assets/images/arrow-left-red.png'),
                    Spacer(),
                    Apptext_Bold(
                      'فروش آپارتمان',
                      Colors.black,
                      TextAlign.end,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

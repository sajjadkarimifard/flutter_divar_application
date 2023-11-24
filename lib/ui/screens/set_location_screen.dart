import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/widgets/checkbox.dart';
import 'package:flutter_divar_application/ui/widgets/container_botton.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Apptext_Bold('موقعیت مکانی', Colors.black, TextAlign.end),
                SizedBox(width: 8),
                Image.asset('assets/images/icon_map.png'),
              ],
            ),
            SizedBox(height: 16),
            Apptext_Medium(
              'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.',
              CustomColor.greyText,
              TextAlign.end,
            ),
            SizedBox(height: 32),
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
                    'موقعیت دقیق نقشه نمایش داده شود؟',
                    Colors.black,
                    TextAlign.end,
                  ),
                ],
              ),
            ),
            Spacer(),
            Containerbotton('بعدی', false),
          ],
        ),
      ),
    );
  }
}

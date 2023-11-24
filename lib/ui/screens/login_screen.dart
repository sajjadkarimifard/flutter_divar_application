import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/screens/import_number_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(height: 76),
            Image.asset('assets/images/login.png'),
            SizedBox(height: 32),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Apptext_Bold('اینجا محل', Colors.black, TextAlign.end),
                  SizedBox(child: Image.asset('assets/images/logo_aviz.png')),
                  Apptext_Bold('آگهی شماست', Colors.black, TextAlign.end),
                ],
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 63,
              width: 305,
              child: Apptext_Medium(
                'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید',
                CustomColor.greyText,
                TextAlign.center,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.redcolor,
                    minimumSize: Size(159, 40),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(width: 25),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: CustomColor.redcolor),
                    primary: CustomColor.redcolor,
                    minimumSize: Size(159, 40),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ImportNumberScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'ورود',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

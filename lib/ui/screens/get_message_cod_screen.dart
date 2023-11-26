import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/constant/text_style.dart';
import 'package:flutter_divar_application/ui/screens/welcome_screen.dart';
import 'package:flutter_divar_application/ui/widgets/container_botton.dart';

class GetMessageCodeScreen extends StatefulWidget {
  const GetMessageCodeScreen({super.key});

  @override
  State<GetMessageCodeScreen> createState() => _GetMessageCodeScreenState();
}

class _GetMessageCodeScreenState extends State<GetMessageCodeScreen> {
  int? selectedItemIndex;
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(4, (index) => TextEditingController());
    _focusNodes = List.generate(4, (index) => FocusNode());
    for (var i = 0; i < _controllers.length; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.isNotEmpty && i < _controllers.length - 1) {
          _focusNodes[i + 1].requestFocus();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 76),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Apptext_Bold(
                      'تایید شماره موبایل', Colors.black, TextAlign.end),
                  SizedBox(
                    height: 16,
                  ),
                  Apptext_Medium(
                    'کد ورود پیامک شده را وارد کنید',
                    CustomColor.greyText,
                    TextAlign.end,
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            SizedBox(
              height: 48,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: 70,
                    height: 48,
                    decoration: BoxDecoration(
                      color: (selectedItemIndex == index)
                          ? CustomColor.greyText
                          : CustomColor.greyContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: TextField(
                        onChanged: (value) {
                          if (value.isEmpty && index > 0) {
                            _focusNodes[index - 1].requestFocus();
                          }
                        },
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'SB'),
                        cursorColor: CustomColor.greyContainer,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 5),
                          counterText: '',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Apptext_Medium(
                  'ارسال مجدد کد',
                  CustomColor.greyText,
                  TextAlign.center,
                ),
                SizedBox(width: 5),
                Apptext_Bold('00:45', Colors.black, TextAlign.end),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomeScreen();
                        },
                      ),
                    );
                  },
                  child: Containerbotton('تایید ورود', false)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var i = 0; i < _controllers.length; i++) {
      _controllers[i].dispose();
      _focusNodes[i].dispose();
    }
    super.dispose();
  }
}

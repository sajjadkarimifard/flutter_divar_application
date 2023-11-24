import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';

class AnimatedCheckbox extends StatefulWidget {
  @override
  _AnimatedCheckboxState createState() => _AnimatedCheckboxState();
}

class _AnimatedCheckboxState extends State<AnimatedCheckbox> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Center(
        child: SizedBox(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: 20,
            height: 16,
            decoration: BoxDecoration(
              color: _isChecked ? CustomColor.greyText : CustomColor.redcolor,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  margin: EdgeInsets.only(
                    left: _isChecked ? 2 : 8,
                    top: 4,
                    bottom: 4,
                  ),
                  width: 9,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

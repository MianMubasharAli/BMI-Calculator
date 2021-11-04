import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onPress;
  BottomButton({this.buttonText, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 5),
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(buttonText!,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

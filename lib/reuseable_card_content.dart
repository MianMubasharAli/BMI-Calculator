import 'package:flutter/material.dart';

const textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);

class ReuseableCardContent extends StatelessWidget {
  final IconData? icon;
  final String? name;
  ReuseableCardContent({this.icon, this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          name!,
          style: textStyle,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kTextStyle,
        )
      ],
    );
  }
}

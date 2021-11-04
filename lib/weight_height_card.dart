import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class WeightHeightCard extends StatefulWidget {
  final String? label;

  WeightHeightCard({
    this.label,
  });

  @override
  State<WeightHeightCard> createState() => _WeightHeightCardState();
}

class _WeightHeightCardState extends State<WeightHeightCard> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.label!,
          style: kTextStyle,
        ),
        Text(
          number.toString(),
          style: kHeightCardTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: () {
                setState(() {
                  if (number > 0) {
                    number = number - 1;
                  }
                });
              },
            ),
            // WeightHeightIcons(
            //   icon: Icons.remove,
            // ),
            const SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: () {
                setState(() {
                  number = number + 1;
                });
              },
            )
          ],
        )
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPress;
  RoundIconButton({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
      onPressed: onPress,
      fillColor: Colors.white.withOpacity(0.09),
      shape: CircleBorder(),
    );
  }
}

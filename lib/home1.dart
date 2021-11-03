import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'reuseable_card_content.dart';

const bottomContainerHeight = 80.0;
const inActiveColor = Color(0xFF111428);
const activeColor = Color(0xFF111341);
enum GenderType { male, female }

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  GenderType? genderType;
  // Color maleCardColor = inActiveColor;
  // Color femaleCardColor = inActiveColor;
  // void updateColor(GenderType gender) {
  //   if (gender == GenderType.male) {
  //     if (maleCardColor == inActiveColor) {
  //       maleCardColor = activeColor;
  //       femaleCardColor = inActiveColor;
  //     } else {
  //       maleCardColor = inActiveColor;
  //     }
  //   } else if (gender == GenderType.female) {
  //     if (femaleCardColor == inActiveColor) {
  //       femaleCardColor = activeColor;
  //       maleCardColor = inActiveColor;
  //     } else {
  //       femaleCardColor = inActiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BmI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      genderType = GenderType.male;
                    });
                  },
                  color: genderType == GenderType.male
                      ? activeColor
                      : inActiveColor,
                  childWidget: ReuseableCardContent(
                      icon: FontAwesomeIcons.mars, name: 'Male'),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      genderType = GenderType.female;
                    });
                  },
                  color: genderType == GenderType.female
                      ? activeColor
                      : inActiveColor,
                  childWidget: ReuseableCardContent(
                    icon: FontAwesomeIcons.venus,
                    name: "Female",
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReuseableCard(
              color: inActiveColor,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  color: inActiveColor,
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  color: inActiveColor,
                ),
              ),
            ],
          )),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: Color(0xFFEB1555),
            padding: const EdgeInsets.only(top: 10),
            child: const Center(
                child: Text(
              "CALCULATE",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }
}

import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/result.dart';
import 'package:bmi_calculator/weight_height_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'reuseable_card_content.dart';
import 'constants.dart';
import 'botom_button.dart';

enum GenderType { male, female }

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  GenderType? genderType;
  double _currentSliderValue = 20;
  int weight = 0;
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
                      ? kActiveColor
                      : kInActiveColor,
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
                      ? kActiveColor
                      : kInActiveColor,
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
              color: kInActiveColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Height", style: kTextStyle),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: _currentSliderValue.toStringAsFixed(0),
                            style: kHeightCardTextStyle),
                        const TextSpan(
                          text: "cm",
                        ),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderThemeData().copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        overlayColor: Color(0x29EB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 16,
                        )),
                    child: Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 200,
                      divisions: 200,
                      thumbColor: Color(0xFFEB1555),
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  color: kInActiveColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight",
                        style: kTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kHeightCardTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                if (weight > 0) {
                                  weight = weight - 1;
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
                                weight = weight + 1;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  color: kInActiveColor,
                  childWidget: WeightHeightCard(
                    label: "Age",
                  ),
                ),
              ),
            ],
          )),
          BottomButton(
            buttonText: "CALCULATE",
            onPress: () {
              BmiBrain calc =
                  BmiBrain(height: _currentSliderValue.toInt(), weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(calc.getResult(),
                      calc.BmiCalculator(), calc.interpretation()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

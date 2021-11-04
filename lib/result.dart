import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'botom_button.dart';

class Result extends StatefulWidget {
  final String? getResult;
  final String? BmiCalculator;
  final String? interpretation;
  Result(this.getResult, this.BmiCalculator, this.interpretation);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Your Result",
                //textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                color: kInActiveColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.getResult!,
                      style: kResultCardNormalText,
                    ),
                    Text(
                      widget.BmiCalculator!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 100,
                      ),
                    ),
                    const Text(
                      "Normal Bmi Range",
                      style: kResultText,
                    ),
                    const Text(
                      "18.5 - 25 " + " Kg/m2",
                      style: kResultText,
                    ),
                    Text(
                      widget.interpretation!,
                      textAlign: TextAlign.center,
                      style: kResultText,
                    ),
                    SizedBox(
                      width: ((MediaQuery.of(context).size.width) / 100) * 60,
                      height: ((MediaQuery.of(context).size.height) / 100) * 7,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            //onPrimary: Colors.black.withOpacity(0.09),
                            primary: Colors.black.withOpacity(0.09)),
                        onPressed: () {},
                        child: const Text("Save Result"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonText: "Again Calculate BMI",
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}

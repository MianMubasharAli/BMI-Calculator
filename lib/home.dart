import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white30,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IntrinsicHeight(
              child: Card(
                color: Colors.white30.withOpacity(0.5),
                child: Container(
                  height: ((MediaQuery.of(context).size.height) / 100) * 22,
                  width: ((MediaQuery.of(context).size.width) / 100) * 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.female,
                        size: 80,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            IntrinsicHeight(
              child: Card(
                color: Colors.white30.withOpacity(0.5),
                child: Container(
                  height: ((MediaQuery.of(context).size.height) / 100) * 22,
                  width: ((MediaQuery.of(context).size.width) / 100) * 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.male,
                        size: 80,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ]),
          IntrinsicHeight(
            child: Card(
              color: Colors.white30.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: ((MediaQuery.of(context).size.height) / 100) * 22,
                width: ((MediaQuery.of(context).size.width) / 100) * 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: _currentSliderValue.toStringAsFixed(0),
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                              text: "cm",
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 200,
                      divisions: 200,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    )
                    // Slider(
                    //   value: _currentSliderValue,
                    //   onChanged: (double value) {
                    //     _currentSliderValue = value;
                    //   },
                    //   min: 0,
                    //   max: 200,
                    //   divisions: 20,
                    //   label: _currentSliderValue.round().toString(),
                    // )
                  ],
                ),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IntrinsicHeight(
              child: Card(
                color: Colors.white30.withOpacity(0.5),
                child: Container(
                  height: ((MediaQuery.of(context).size.height) / 100) * 22,
                  width: ((MediaQuery.of(context).size.width) / 100) * 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "65",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white30.withOpacity(0.9),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white30.withOpacity(0.9),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            IntrinsicHeight(
              child: Card(
                color: Colors.white30.withOpacity(0.5),
                child: Container(
                  height: ((MediaQuery.of(context).size.height) / 100) * 22,
                  width: ((MediaQuery.of(context).size.width) / 100) * 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "65",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white30.withOpacity(0.9),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white30.withOpacity(0.9),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: ((MediaQuery.of(context).size.height) / 100) * 7,
            width: ((MediaQuery.of(context).size.width) / 100) * 95,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black54,
                ),
                onPressed: () {},
                child: Text(
                  "Caculate",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
      ),
      body:
      Column(
        children: [
          Container(
            height: size.height,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  height: size.height*0.25,
                  width: size.width,                         //FOR DYNAMIC BMI SHOWING

                ),
                SizedBox(
                  height: 20,
                  width: size.width,
                  child: Text("YOUR BMI IS"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

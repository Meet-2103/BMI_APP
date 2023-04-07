import 'package:final_crieya/components/rounded_button.dart';
import 'package:final_crieya/constants.dart';
import 'package:final_crieya/screens/login/login_screen.dart';
import 'package:final_crieya/screens/signup/signup_screen.dart';

import 'package:final_crieya/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///////////////////////////////////
            const Text(
              'Welcome to BMI Application',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            SizedBox(
              height: size.height * 0.05,
            ),
            ////////////////////////////////////
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            //////////////////////////////////////
            SizedBox(
              height: size.height * 0.05,
            ),

            RoundedButton(
              text: "LOGIN",
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            ///////////////////////////////////////
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

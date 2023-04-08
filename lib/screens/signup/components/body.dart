
import 'package:final_crieya/screens/signup/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../login/components/background.dart';
import '../../login/login_screen.dart';
import 'on_divider.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            /////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),
            ////////////////////////////
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            ////////////////////////////////////
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            /////////////////////////////////////////
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            //////////////////////

            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),

            /////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),
            /////////////////////////////

            AlreadyHaveAnAccountCheck(
              login: false,
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
            OnDivider(),
            /////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /////////////////////////////////////////////////////////////////////////////
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),

                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),

                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

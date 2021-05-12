import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/Components/rounded_button.dart';
import 'package:food_delivery/Screens/Login/login_screen.dart';
import 'package:food_delivery/Screens/Welcome/Components/background.dart';
import 'package:food_delivery/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WELCOME TO FOOD DELIVERY'),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
            color: kPrimaryLightColor,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}


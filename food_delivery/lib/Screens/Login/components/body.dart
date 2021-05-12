import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/Components/rounded_button.dart';
import 'package:food_delivery/Screens/Login/components/background.dart';
import 'package:food_delivery/components/rounded_input_field.dart';
import 'package:food_delivery/components/rounded_password_field.dart';
import 'package:food_delivery/components/text_field_container.dart';
import 'package:food_delivery/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: (){

              },
            ),
            SizedBox(height: size.height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ? ",style: GoogleFonts.poppins(
                  color: kPrimaryColor
                ),),
                GestureDetector(
                  onTap: (){

                  },
                  child: Text('Sign Up',style: GoogleFonts.poppins(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold
                  ),),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}

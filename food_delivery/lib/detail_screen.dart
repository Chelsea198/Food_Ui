import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/backward.svg',
                  height: 11,
                ),
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(6),
              height: 250,
              width: 300,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kSecondaryColor),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/image_1_big.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Check span\n",
                      style: GoogleFonts.poppins(color: Colors.blue),
                    ),
                    TextSpan(
                      text: "Check span",
                      style: GoogleFonts.poppins(
                          color: Colors.blue.withOpacity(.5)),
                    )
                  ]),
                ),
                Text(
                  '\$20',
                  style: GoogleFonts.poppins(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
              style: GoogleFonts.poppins(color: kTextColor),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: kPrimaryColor.withOpacity(.19)
                    ),
                    child: Row(
                      children: [
                        Text('Add to bag',style: GoogleFonts.poppins(
                            color: Colors.black
                        ),),
                        SizedBox(width: 30,),
                        SvgPicture.asset('assets/icons/forward.svg',height: 11,)
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.26)
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor
                          ),
                          child: SvgPicture.asset('assets/icons/bag.svg'),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            width: 28,
                            alignment: Alignment.center,
                            height: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor
                            ),
                            child: Text('0',style: GoogleFonts.poppins(
                              color: kTextColor,
                              fontSize: 15
                            ),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

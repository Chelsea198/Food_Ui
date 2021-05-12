import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCard({
    Key key,
    this.title,
    this.ingredient,
    this.image,
    this.price,
    this.calories,
    this.description,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 320,
        width: 250,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 300,
                width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 161,
                width: 161,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(.15)),
              ),
            ),
            Positioned(
              left: -50,
              top: 0,
              child: Container(
                width: 256,
                height: 164,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
            Positioned(
              right: 25,
              top: 80,
              child: Text(
                '\$$price',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: kPrimaryColor),
              ),
            ),
            Positioned(
                left: 40,
                top: 180,
                child: Container(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'With $ingredient',
                        style: GoogleFonts.poppins(
                            color: kTextColor.withOpacity(.4)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        description,
                        maxLines: 3,
                        style: GoogleFonts.poppins(
                            color: kTextColor.withOpacity(.65)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        calories,
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
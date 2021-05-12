import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({
    Key key,
    this.title,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: active ? kPrimaryColor : kTextColor.withOpacity(.4)),
      ),
    );
  }
}
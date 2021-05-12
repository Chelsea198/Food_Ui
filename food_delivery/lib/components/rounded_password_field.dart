import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          hintText: 'Password',
          suffixIcon: Icon(Icons.visibility,color: kPrimaryColor,)
      ),
    ));
  }
}
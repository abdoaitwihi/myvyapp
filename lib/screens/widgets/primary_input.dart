import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';

class PrimaryInput extends StatelessWidget {
  const PrimaryInput({
    Key? key,
    this.hintText,
  }) : super(key: key);

  final hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: greyColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

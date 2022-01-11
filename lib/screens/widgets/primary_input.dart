import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';

class PrimaryInput extends StatelessWidget {
  const PrimaryInput({
    Key? key,
    this.hintText,
    this.autoFocus = false,
  }) : super(key: key);

  final hintText;
  final autoFocus;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
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

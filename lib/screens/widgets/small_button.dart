import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: text1,
        ),
      ),
    );
  }
}

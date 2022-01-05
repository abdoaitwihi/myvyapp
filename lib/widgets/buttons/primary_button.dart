import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  final onPressed;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(defaulBorderRadius),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 14),
            ),
            backgroundColor: MaterialStateProperty.all(primaryColor),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: whiteColor, fontSize: 17),
          ),
        ),
      ),
    );
  }
}

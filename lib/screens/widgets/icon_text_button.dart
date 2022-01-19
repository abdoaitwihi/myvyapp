import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/utils/helpers.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    Key? key,
    this.icon,
    this.text,
    this.onPressed,
  }) : super(key: key);
  final icon;
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 30,
          ),
          addVerticalSpace(5),
          Text(
            text,
            style: text5,
          )
        ],
      ),
    );
  }
}

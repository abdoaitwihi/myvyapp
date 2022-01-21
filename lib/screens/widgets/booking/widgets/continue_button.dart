import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/utils/helpers.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key, this.text, this.onPressed}) : super(key: key);

  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Text(text, style: text1),
          addHorizontalSpace(10),
          SvgPicture.asset('assets/icons/continue.svg'),
        ],
      ),
    );
  }
}

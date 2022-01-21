import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/utils/helpers.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({Key? key, this.text, this.onPressed}) : super(key: key);

  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/back3.svg'),
        addHorizontalSpace(10),
        Text(text, style: text2)
      ],
    );
  }
}

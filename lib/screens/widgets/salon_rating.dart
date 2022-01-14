import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/utils/helpers.dart';

class SalonRating extends StatelessWidget {
  const SalonRating({
    Key? key,
    this.data,
  }) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/star.svg',
        ),
        addHorizontalSpace(5),
        Text(
          '4.9 Excellent',
          style: text5,
        ),
        addHorizontalSpace(10),
        Text('(97 Avis)')
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/full_star.svg',
            height: 17,
          ),
          SvgPicture.asset(
            'assets/icons/full_star.svg',
            height: 17,
          ),
          SvgPicture.asset(
            'assets/icons/full_star.svg',
            height: 17,
          ),
          SvgPicture.asset(
            'assets/icons/empty_star.svg',
            height: 17,
          ),
          SvgPicture.asset(
            'assets/icons/empty_star.svg',
            height: 17,
          ),
        ],
      ),
    );
  }
}

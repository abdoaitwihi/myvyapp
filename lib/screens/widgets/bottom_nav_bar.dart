import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myvy/config/styles.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.2),
                offset: const Offset(0, -2),
                blurRadius: 6)
          ],
          color: whiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              print('hi');
            },
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              print('hi');
            },
            icon: SvgPicture.asset(
              'assets/icons/maps.svg',
            ),
          ),
          IconButton(
            onPressed: () {
              print('hi');
            },
            icon: SvgPicture.asset('assets/icons/calander.svg'),
          ),
          IconButton(
            onPressed: () {
              print('hi');
            },
            icon: SvgPicture.asset('assets/icons/heart.svg'),
          ),
          IconButton(
            onPressed: () {
              print('hi');
            },
            icon: SvgPicture.asset('assets/icons/user.svg'),
          ),
        ],
      ),
    );
  }
}

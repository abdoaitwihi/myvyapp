import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';

class AuthTopBar extends StatelessWidget {
  const AuthTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      height: 90,
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              'assets/icons/back-icon.svg',
              height: 20,
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              'assets/icons/logo-white.svg',
              height: 70,
            ),
          )
        ],
      ),
    );
  }
}

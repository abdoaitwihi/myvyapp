import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';

class AuthOuterContainer extends StatelessWidget {
  const AuthOuterContainer({Key? key, this.widget}) : super(key: key);
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
            top: defaultPadding * 1,
            left: defaultPadding * 1.5,
            right: defaultPadding * 1.5),
        decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [BoxShadow(color: Color(0xFF9B9898), blurRadius: 12)]),
        child: widget);
  }
}

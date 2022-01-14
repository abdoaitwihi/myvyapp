import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';

class PrimaryButtonTwo extends StatelessWidget {
  const PrimaryButtonTwo({
    Key? key,
    this.child,
    this.onPressed,
  }) : super(key: key);
  final child;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.2),
                offset: Offset(0, 3),
                blurRadius: 6)
          ]),
      child: TextButton(onPressed: onPressed, child: child),
    );
  }
}

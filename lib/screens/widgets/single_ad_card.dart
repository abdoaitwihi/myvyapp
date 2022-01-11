import 'package:flutter/material.dart';

class SingleAdCard extends StatelessWidget {
  const SingleAdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        width: 400,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image(
            image: AssetImage('assets/images/ad.png'),
          ),
        ));
  }
}

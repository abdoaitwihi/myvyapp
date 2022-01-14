import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/utils/helpers.dart';

class CardOne extends StatelessWidget {
  const CardOne({Key? key, required this.data}) : super(key: key);
  final data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: EdgeInsets.only(left: 25, right: 0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image(
                image: AssetImage(data.image),
                height: 70,
                width: 90,
              ),
            ),
          ),
          addVerticalSpace(10),
          Text(
            data.name,
            style: text5,
          )
        ],
      ),
    );
  }
}

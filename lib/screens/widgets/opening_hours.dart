import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/utils/helpers.dart';

class OpeningHours extends StatelessWidget {
  const OpeningHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          addVerticalSpace(15),
          Text(
            'Opening Hours',
            style: title3,
          ),
          addVerticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Monday - Friday',
                style: text2,
              ),
              Text(
                '9:00 am - 10:00 pm',
                style: title5,
              ),
            ],
          ),
          addVerticalSpace(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Saturday - Sunday',
                style: text2,
              ),
              Text(
                '10:00 am - 5:00 pm',
                style: title5,
              ),
            ],
          ),
          addVerticalSpace(15),
        ],
      ),
    );
  }
}

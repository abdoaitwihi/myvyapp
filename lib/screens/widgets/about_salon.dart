import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/screens/widgets/primary_button_2.dart';
import 'package:myvy/screens/widgets/salon_description.dart';
import 'package:myvy/utils/helpers.dart';

import 'opening_hours.dart';

class AboutSalon extends StatelessWidget {
  const AboutSalon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SalonDescription(),
        OpeningHours(),
        addVerticalSpace(5),
        Contact(),
        addVerticalSpace(20),
        Address(),
        addVerticalSpace(20),
        Map(),
      ],
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Contact',
          style: title3,
        ),
        addVerticalSpace(10),
        Text(
          '+212 660 23 78 93',
          style: TextStyle(color: Colors.blue),
        )
      ],
    ));
  }
}

class Address extends StatelessWidget {
  const Address({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Address',
          style: title3,
        ),
        addVerticalSpace(10),
        Text(
          '32 avenue Omar Ibn Khatt, 10090 - RABAT, Maroc',
          style: text2,
        )
      ],
    ));
  }
}

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/images/map.png'),
                  fit: BoxFit.cover),
            ),
          ),
          addVerticalSpace(20),
          PrimaryButtonTwo(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/send.svg',
                  height: 20,
                ),
                addHorizontalSpace(9),
                Text(
                  'Get directions - 2 km',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

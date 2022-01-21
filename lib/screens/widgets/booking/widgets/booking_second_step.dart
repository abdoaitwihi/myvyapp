import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/booking/widgets/continue_button.dart';
import 'package:myvy/screens/widgets/booking/widgets/previous_button.dart';
import 'package:myvy/screens/widgets/booking_salon_specialists.dart';
import 'package:myvy/screens/widgets/nearest_salons.dart';
import 'package:myvy/screens/widgets/single_salon_card.dart';
import 'package:myvy/utils/helpers.dart';

import '../../horizontal_padding.dart';
import 'booking_services.dart';

class BookingSecondStep extends StatelessWidget {
  const BookingSecondStep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HorizontalPadding(
          child: Text(
            'Book an Appointment',
            style: title3,
          ),
        ),
        addVerticalSpace(12),
        SingleSalonCard(
          data: Salon(
              image: 'assets/images/card.png', title: 'Salon Jacques Dessange'),
        ),
        addVerticalSpace(12),
        HorizontalPadding(
          child: Text(
            'Services',
            style: title3,
          ),
        ),
        addVerticalSpace(12),
        BookingServices(),
        addVerticalSpace(22),
        HorizontalPadding(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Date & Time', style: title3),
              Text(
                '20 December, 2021 | 10:00 am',
                style: text3,
              ),
            ],
          ),
        ),
        addVerticalSpace(32),
        HorizontalPadding(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PreviousButton(
                text: 'BACK',
                onPressed: () {},
              ),
              ContinueButton(
                text: 'CONTINUE',
                onPressed: () {},
              )
            ],
          ),
        ),
        addVerticalSpace(22),
      ],
    );
  }
}

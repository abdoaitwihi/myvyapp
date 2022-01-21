import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/booking/widgets/continue_button.dart';
import 'package:myvy/screens/widgets/booking/widgets/previous_button.dart';
import 'package:myvy/screens/widgets/booking_salon_specialists.dart';
import 'package:myvy/utils/helpers.dart';

import '../../horizontal_padding.dart';

class BookingFirstStep extends StatelessWidget {
  const BookingFirstStep({
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
        addVerticalSpace(22),
        HorizontalPadding(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select date',
                style: title4,
              ),
              Text('Dec, 2021')
            ],
          ),
        ),
        addVerticalSpace(122),
        addVerticalSpace(22),
        HorizontalPadding(
          child: Text(
            'Select Specialist',
            style: title4,
          ),
        ),
        addVerticalSpace(272),
        addVerticalSpace(17),
        BookingSalonSpecialists(),
        addVerticalSpace(30),
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

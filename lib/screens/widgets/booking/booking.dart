import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/booking/widgets/booking_first_step.dart';
import 'package:myvy/screens/widgets/booking/widgets/booking_second_step.dart';
import 'package:myvy/screens/widgets/booking/widgets/continue_button.dart';
import 'package:myvy/screens/widgets/booking/widgets/previous_button.dart';
import 'package:myvy/screens/widgets/booking_salon_specialists.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/utils/helpers.dart';

class Booking extends StatelessWidget {
  const Booking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BookingSecondStep();
    BookingFirstStep();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/utils/helpers.dart';

class SingleAppointmentCard extends StatelessWidget {
  const SingleAppointmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(.3), blurRadius: 6)
          ],
          color: primaryColor,
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/appointment.svg'),
            addHorizontalSpace(10),
            Text(
              'At the Beauty Center',
              style: text7,
            ),
            Spacer(),
            Text(
              '11:00 am',
              style: text7,
            )
          ],
        ),
      ),
    );
  }
}

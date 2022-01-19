import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/utils/helpers.dart';

class SalonSpecialists extends StatelessWidget {
  SalonSpecialists({Key? key}) : super(key: key);

  final List<Specialist> specialists = [
    Specialist(
        image: 'assets/images/bilal.png', name: 'Bilal', subTitle: 'Barber'),
    Specialist(
        image: 'assets/images/rym.png', name: 'Rym', subTitle: 'Makeup Artist'),
    Specialist(
        image: 'assets/images/mary.png', name: 'Mary', subTitle: 'Colorist'),
    Specialist(
        image: 'assets/images/bilal.png', name: 'Bilal', subTitle: 'Barber'),
    Specialist(
        image: 'assets/images/rym.png', name: 'Rym', subTitle: 'Makeup Artist'),
    Specialist(
        image: 'assets/images/mary.png', name: 'Mary', subTitle: 'Colorist'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specialists.length,
        itemBuilder: (context, index) {
          return SpecialistCard(
            specialist: specialists[index],
          );
        },
      ),
    );
  }
}

class SpecialistCard extends StatelessWidget {
  const SpecialistCard({
    Key? key,
    required this.specialist,
  }) : super(key: key);
  final Specialist specialist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/speacialist-screen');
      },
      child: Container(
        // width: 95,
        margin: EdgeInsets.only(left: 25),
        child: Column(
          children: [
            Image.asset(
              specialist.image,
              height: 80,
            ),
            addVerticalSpace(10),
            Text(
              specialist.name,
              style: text4,
            ),
            Text(
              specialist.subTitle,
              style: text6,
            )
          ],
        ),
      ),
    );
  }
}

class Specialist {
  String image;
  String name;
  String subTitle;
  Specialist({required this.image, required this.name, required this.subTitle});
}

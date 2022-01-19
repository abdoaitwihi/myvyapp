import 'package:flutter/material.dart';
import 'package:myvy/screens/widgets/single_salon_package.dart';

class SalonPackages extends StatelessWidget {
  SalonPackages({
    Key? key,
  }) : super(key: key);

  final List<Salon> salons = [
    Salon(image: 'assets/images/image2.png', title: 'Beauty center'),
    Salon(image: 'assets/images/card.png', title: 'Salon Jacques Dessange'),
    Salon(image: 'assets/images/image2.png', title: 'Beauty center'),
    Salon(image: 'assets/images/card.png', title: 'Salon Jacques Dessange'),
    Salon(image: 'assets/images/image2.png', title: 'Beauty center'),
    Salon(image: 'assets/images/card.png', title: 'Salon Jacques Dessange'),
  ];

  final List<SingleSalonPackage> salonsCards = [];

  @override
  Widget build(BuildContext context) {
    salons.forEach((element) {
      salonsCards.add(SingleSalonPackage(data: element));
    });
    return Column(children: salonsCards);
  }
}

class Salon {
  String image;
  String title;
  Salon({required this.image, required this.title});
}

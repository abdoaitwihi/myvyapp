import 'package:flutter/material.dart';
import 'package:myvy/screens/widgets/single_salon_card.dart';

class NearestSalons extends StatelessWidget {
  const NearestSalons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleSalonCard(),
        SingleSalonCard(),
        SingleSalonCard(),
        SingleSalonCard(),
        SingleSalonCard(),
        SingleSalonCard(),
        SingleSalonCard(),
        SingleSalonCard(),
      ],
    );
  }
}

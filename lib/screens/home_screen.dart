import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/bottom_nav_bar.dart';
import 'package:myvy/screens/widgets/home_header.dart';
import 'package:myvy/screens/widgets/nearest_salons.dart';
import 'package:myvy/screens/widgets/search_bar.dart';
import 'package:myvy/screens/widgets/single_ad_card.dart';
import 'package:myvy/screens/widgets/single_appointment_card.dart';
import 'package:myvy/utils/helpers.dart';

import 'widgets/card_one.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Cat> categories = [
    Cat(name: 'All', active: true, image: 'assets/images/card.png'),
    Cat(name: 'Haircuts', active: false, image: 'assets/images/image2.png'),
    Cat(name: 'Make up', active: false, image: 'assets/images/card.png'),
    Cat(name: 'Waxing', active: false, image: 'assets/images/image2.png'),
    Cat(name: 'Massage', active: false, image: 'assets/images/card.png'),
    Cat(name: 'Haircuts', active: false, image: 'assets/images/image2.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: size.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                HomeHeader(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: SearchBar(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Appointments',
                        style: title3,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Today, morning',
                            style: text2,
                          ))
                    ],
                  ),
                ),
                Column(
                  children: [
                    SingleAppointmentCard(),
                    addVerticalSpace(40),
                  ],
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CardOne(data: categories[index]);
                    },
                  ),
                ),
                SingleAdCard(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Nearest Salons',
                        style: title3,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: text2,
                          ))
                    ],
                  ),
                ),
                NearestSalons(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Cat {
  String? name;
  String? image;
  bool? active;

  Cat({this.name, this.active, this.image});
}

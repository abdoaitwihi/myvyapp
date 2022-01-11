import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/home_header.dart';
import 'package:myvy/screens/widgets/nearest_salons.dart';
import 'package:myvy/screens/widgets/search_bar.dart';
import 'package:myvy/screens/widgets/single_ad_card.dart';
import 'package:myvy/screens/widgets/single_appointment_card.dart';
import 'package:myvy/utils/helpers.dart';

import 'widgets/card_one.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        // height: size.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                HomeHeader(),
                SearchBar(),
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardOne(),
                      CardOne(),
                      CardOne(),
                      CardOne(),
                      CardOne(),
                    ],
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'sdfjlk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {},
      ),
    );
  }
}

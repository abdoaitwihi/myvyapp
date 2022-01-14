import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/bottom_nav_bar.dart';
import 'package:myvy/screens/widgets/nearest_salons.dart';
import 'package:myvy/screens/widgets/search_bar.dart';
import 'package:myvy/screens/widgets/search_categories.dart';
import 'package:myvy/utils/helpers.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  get title3 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: size.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                addVerticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SearchBar(),
                ),
                addVerticalSpace(7),
                SearchCategories(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Results found (34)',
                        style: title4,
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(30),
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

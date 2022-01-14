import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/about_salon.dart';
import 'package:myvy/screens/widgets/bottom_nav_bar.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/screens/widgets/opening_hours.dart';
import 'package:myvy/screens/widgets/primary_button_2.dart';
import 'package:myvy/screens/widgets/salon_categories.dart';
import 'package:myvy/screens/widgets/salon_description.dart';
import 'package:myvy/screens/widgets/salon_rating.dart';
import 'package:myvy/screens/widgets/salon_services.dart';
import 'package:myvy/screens/widgets/salon_specialists.dart';
import 'package:myvy/utils/helpers.dart';
import 'package:myvy/widgets/buttons/primary_button.dart';

class SalonScreen extends StatelessWidget {
  const SalonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            height: height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: height * .4,
                    child: Stack(
                      children: [
                        SizedBox(
                          // height: 150.0,
                          // width: 300.0,
                          child: Carousel(
                            boxFit: BoxFit.cover,
                            autoplay: false,
                            animationCurve: Curves.fastOutSlowIn,
                            animationDuration: Duration(milliseconds: 300),
                            dotSize: 10.0,
                            dotIncreasedColor: Colors.white,
                            dotBgColor: Colors.transparent,
                            dotPosition: DotPosition.bottomCenter,
                            dotVerticalPadding: 30.0,
                            dotIncreaseSize: 1,
                            dotSpacing: 20,
                            dotColor: Colors.white.withOpacity(.7),
                            showIndicator: true,
                            // indicatorBgPadding: 4.0,
                            images: [
                              ExactAssetImage("assets/images/bg2.png"),
                              ExactAssetImage("assets/images/bg2.png"),
                              ExactAssetImage("assets/images/bg2.png"),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.2),
                                      offset: Offset(0, -9),
                                      blurRadius: 6)
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      addHorizontalSpace(25),
                      Expanded(
                        child: Text(
                          'Salon Jacques Dessange  ',
                          style: title3,
                        ),
                      ),
                      // Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Book now',
                          style: text1,
                        ),
                      ),
                      addHorizontalSpace(25),
                    ],
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      '32 avenue Omar Ibn Khatt, 10090 - RABAT, Maroc',
                      style: text6,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SalonRating(),
                  ),
                  addVerticalSpace(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTextButton(
                          icon: 'assets/icons/earth.svg',
                          text: 'Website',
                          onPressed: () {},
                        ),
                        IconTextButton(
                          icon: 'assets/icons/phone.svg',
                          text: 'Call',
                          onPressed: () {},
                        ),
                        IconTextButton(
                          icon: 'assets/icons/pin_outlined.svg',
                          text: 'Location',
                          onPressed: () {},
                        ),
                        IconTextButton(
                          icon: 'assets/icons/clock.svg',
                          text: 'Op. Hours',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Salon Specialists ',
                      style: title3,
                    ),
                  ),
                  addVerticalSpace(15),
                  SalonSpecialists(),
                  SalonCategories(),
                  addVerticalSpace(5),
                  // AboutSalon(),
                  SalonServices(),
                  addVerticalSpace(100),
                  // Container(
                  //   // height: 500,
                  //   child: DefaultTabController(
                  //       length: 3,
                  //       child: Column(
                  //         children: [
                  //           Container(
                  //             height: 40,
                  //             color: primaryColor,
                  //             child: TabBar(
                  //               isScrollable: true,
                  //               indicatorColor: Colors.white,
                  //               tabs: [
                  //                 Text(
                  //                   'data',
                  //                   style: text2,
                  //                 ),
                  //                 Text(
                  //                   'data',
                  //                   style: text2,
                  //                 ),
                  //                 Text(
                  //                   'data',
                  //                   style: text2,
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //           Container(
                  //             height: 500,
                  //             child: TabBarView(
                  //               children: [
                  //                 Center(child: Text('DOGS')),
                  //                 Center(child: Text('CATS')),
                  //                 Center(child: Text('BIRDS')),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       )),
                  // )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: HorizontalPadding(
                child: PrimaryButtonTwo(
                  child: Text(
                    'DONE',
                    style: TextStyle(color: whiteColor, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    Key? key,
    this.icon,
    this.text,
    this.onPressed,
  }) : super(key: key);
  final icon;
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 30,
          ),
          addVerticalSpace(5),
          Text(
            text,
            style: text5,
          )
        ],
      ),
    );
  }
}
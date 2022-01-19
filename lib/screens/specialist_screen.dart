import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/bottom_nav_bar.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/screens/widgets/icon_text_button.dart';
import 'package:myvy/screens/widgets/salon_rating.dart';
import 'package:myvy/screens/widgets/small_button.dart';
import 'package:myvy/utils/helpers.dart';

import 'widgets/reviews.dart';

class SpecialistScreen extends StatelessWidget {
  const SpecialistScreen({Key? key}) : super(key: key);

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
                    height: height * .6,
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
                            dotVerticalPadding: 0.0,
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
                              ],
                            ),
                            child: Row(
                              children: [
                                addHorizontalSpace(130),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      addVerticalSpace(16),
                                      Text(
                                        'Rym Saadane',
                                        style: title3,
                                      ),
                                      addVerticalSpace(7),
                                      Text(
                                        'Make up Artist',
                                        style: text2,
                                      ),
                                      // Text(
                                      //   'Salon Jacques Dessange',
                                      //   style: text3,
                                      // ),
                                      addVerticalSpace(7),
                                      SalonRating()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 25,
                          bottom: 29,
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              border: Border.all(color: whiteColor, width: 4),
                            ),
                            child: CircleAvatar(
                              radius: 16.0,
                              child: ClipRRect(
                                child: Image.asset('assets/images/user2.png'),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(15),
                  HorizontalPadding(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTextButton(
                          icon: 'assets/icons/chat.svg',
                          text: 'Chat',
                          onPressed: () {},
                        ),
                        IconTextButton(
                          icon: 'assets/icons/phone.svg',
                          text: 'Call',
                          onPressed: () {},
                        ),
                        IconTextButton(
                          icon: 'assets/icons/heart_filled.svg',
                          text: 'Favorite',
                          onPressed: () {},
                        ),
                        SmallButton(onPressed: () {}, text: 'Book'),
                      ],
                    ),
                  ),
                  addVerticalSpace(20),
                  HorizontalPadding(
                    child: Text(
                        'Rym Saadane is a make up artist, She has been a specialist bridal makeup artist for the past 7 years and has worked on 100’s of brides. Every brides wants to look beautiful on her wedding day. Specialist in all make-up Asian Bridal, Western Bridal, Bridesmaids and Party make-up and Fashion. Airbrush makeup also available. '),
                  ),
                  addVerticalSpace(20),
                  HorizontalPadding(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Badge(data: Data(name: 'Gallery', active: false)),
                        Badge(data: Data(name: 'Reviews', active: true))
                      ],
                    ),
                  ),
                  addVerticalSpace(20),
                  Reviews()
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Badge extends StatelessWidget {
  const Badge({
    Key? key,
    required this.data,
  }) : super(key: key);
  final data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      margin: EdgeInsets.only(right: 0, bottom: 0, top: 0, left: 0),
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
      decoration: BoxDecoration(
        color: data.active == true ? primaryColor : Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              offset: Offset(0, 3),
              blurRadius: 6)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          data.name.toString(),
          style: data.active == true
              ? searchCategoryText
              : activeSearchCategoryText,
        ),
      ),
    );
  }
}

class Data {
  final name;
  final active;
  Data({this.name, this.active});
}

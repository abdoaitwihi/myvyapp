import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/salon_rating.dart';
import 'package:myvy/utils/helpers.dart';

class SingleSalonCard extends StatelessWidget {
  const SingleSalonCard({Key? key, required this.data}) : super(key: key);

  final data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/salon');
      },
      child: Container(
        height: 110,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 110,
                width: 160,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image(
                    image: AssetImage(
                      data.image,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    addVerticalSpace(5),
                    Text(
                      data.title,
                      style: title5,
                    ),
                    addVerticalSpace(5),
                    Text(
                      '32 avenue Omar Ibn Khatt, 10090 RABAT, Maroc',
                      style: text6,
                    ),
                    addVerticalSpace(5),
                    SalonRating()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

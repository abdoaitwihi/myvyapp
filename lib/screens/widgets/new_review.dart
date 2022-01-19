import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/rating_stars.dart';
import 'package:myvy/utils/helpers.dart';

class NewReview extends StatelessWidget {
  const NewReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Write your review'),
            RatingStars(),
          ],
        ),
        addVerticalSpace(20),
        Container(
          // height: 200,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Leave your experience',
                    style: text2,
                  ),
                  SvgPicture.asset(
                    'assets/icons/send_outlined.svg',
                    height: 20,
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                minLines: 5,
                maxLines: 5,
              )
            ],
          ),
        ),
        addVerticalSpace(20),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/screens/widgets/new_review.dart';
import 'package:myvy/screens/widgets/rating_stars.dart';
import 'package:myvy/utils/helpers.dart';

class Reviews extends StatelessWidget {
  Reviews({Key? key}) : super(key: key);

  final List<Review> reviews = [
    Review(
        name: 'Karima Fadili',
        image: 'user2.png',
        rating: 3,
        date: '2 months ago',
        text:
            "The people working here are just so nice and very helpful, amazing stuff !"),
    Review(
        name: 'Nada Slaoui',
        image: 'user2.png',
        rating: 4,
        date: '1 year ago.',
        text: "The placee is very clean,  workers are professional!"),
    Review(
        name: 'Karima Fadili',
        image: 'user2.png',
        rating: 3,
        date: '2 months ago',
        text:
            "The people working here are just so nice and very helpful, amazing stuff !"),
    Review(
        name: 'Nada Slaoui',
        image: 'user2.png',
        rating: 4,
        date: '1 year ago.',
        text: "The placee is very clean,  workers are professional!"),
  ];
  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NewReview(),
          Text(
            'All reviews (32)',
            style: title4,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return SingleReview(
                  data: reviews[index],
                );
              }),
        ],
      ),
    );
  }
}

class SingleReview extends StatelessWidget {
  const SingleReview({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Review data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                'assets/images/' + data.image,
                height: 70,
                width: 70,
              ),
            ),
            addHorizontalSpace(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(12),
                  Text(
                    data.name,
                    style: title4,
                  ),
                  addVerticalSpace(3),
                  RatingStars(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  data.date,
                ),
              ),
            ),
          ],
        ),
        addVerticalSpace(10),
        Text(
          data.text,
          style: text2,
        ),
        addVerticalSpace(30),
      ],
    );
  }
}

class Review {
  final name;
  final image;
  final rating;
  final date;
  final text;

  Review({this.name, this.image, this.rating, this.date, this.text});
}

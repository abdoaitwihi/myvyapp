import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:myvy/utils/helpers.dart';

class BookingServices extends StatelessWidget {
  BookingServices({Key? key}) : super(key: key);

  final List<Service> services = [
    Service(
        image: 'assets/images/image2.png',
        title: 'Bridal Haircut',
        price: 500.00),
    Service(
        image: 'assets/images/card.png',
        title: 'Bridal Make up',
        price: 900.00),
  ];

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      child: Column(
        children: [
          SingleBookingService(
            data: services[0],
          ),
          SingleBookingService(
            data: services[1],
          ),
        ],
      ),
    );
  }
}

class SingleBookingService extends StatelessWidget {
  const SingleBookingService({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Service data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          data.image,
          height: 60,
          width: 60,
        ),
        addHorizontalSpace(12),
        Text(
          data.title,
          style: text2,
        ),
        Spacer(),
        Text(
          data.price.toString() + ' MAD',
          style: text3,
        ),
      ],
    );
  }
}

class Service {
  String image;
  String title;
  double price;
  Service({required this.image, required this.title, this.price = 0});
}

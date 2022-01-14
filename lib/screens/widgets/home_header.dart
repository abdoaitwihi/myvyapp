import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/utils/helpers.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/images/user.png'),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset('assets/icons/bell.svg'),
                height: 35,
                width: 35,
              ),
              addHorizontalSpace(10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SvgPicture.asset('assets/icons/search.svg'),
                  height: 35,
                  width: 35,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Hi, Mehdi Chiadmi',
            style: title3,
          ),
        ),
        addVerticalSpace(7),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/pin.svg'),
              addHorizontalSpace(12),
              const Text(
                '135, Rue Fal ouled omir, Agdal, Rabat',
                style: text2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

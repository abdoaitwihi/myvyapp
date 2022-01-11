import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/utils/helpers.dart';
import 'package:myvy/widgets/buttons/primary_button.dart';
import 'package:myvy/widgets/buttons/secondary_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/logo-orange.svg'),
            ),
            addVerticalSpace(defaultPadding),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 0),
              child: Text(
                'La meilleure façonde  \n de réserver vos soins beauté !',
                textAlign: TextAlign.center,
                style: text1,
              ),
            ),
            addVerticalSpace(defaultPadding * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2, vertical: 0),
              child: SecondaryButton(
                text: 'LOGIN',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
            addVerticalSpace(defaultPadding),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2, vertical: 0),
              child: PrimaryButton(
                text: 'SIGN UP',
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),
            ),
            addVerticalSpace(70)
          ],
        ),
      ),
    );
  }
}

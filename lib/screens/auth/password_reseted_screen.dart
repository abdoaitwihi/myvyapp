import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/auth/widgets/auth_outer_container.dart';
import 'package:myvy/screens/auth/widgets/auth_top_bar.dart';
import 'package:myvy/screens/first_screen.dart';
import 'package:myvy/screens/widgets/primary_input.dart';
import 'package:myvy/utils/helpers.dart';
import 'package:myvy/widgets/buttons/primary_button.dart';

class PasswordResetedScreen extends StatelessWidget {
  const PasswordResetedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                addVerticalSpace(20),
                AuthTopBar(),
                addVerticalSpace(20),
                Expanded(
                  child: AuthOuterContainer(
                    widget: SingleChildScrollView(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          addVerticalSpace(60),
                          SvgPicture.asset(
                            'assets/icons/green-check.svg',
                            width: 50,
                          ),
                          addVerticalSpace(30),
                          Text(
                            'Password Reset',
                            style: title2,
                          ),
                          addVerticalSpace(30),
                          Text(
                            'Your password has been \nReset successfully ',
                            style: text2,
                            textAlign: TextAlign.center,
                          ),
                          addVerticalSpace(50),
                          Container(
                            width: 100,
                            child: PrimaryButton(
                              text: "SIGN IN",
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        FirstScreen(),
                                  ),
                                  (route) => false,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/auth/widgets/auth_outer_container.dart';
import 'package:myvy/screens/auth/widgets/auth_top_bar.dart';
import 'package:myvy/screens/widgets/primary_input.dart';
import 'package:myvy/utils/helpers.dart';
import 'package:myvy/widgets/buttons/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          addVerticalSpace(20),
                          const Text(
                            'Forgot Password',
                            style: title1,
                          ),
                          addVerticalSpace(10),
                          const Text(
                            'Please enter your email to reset your \npassword.',
                            style: text2,
                          ),
                          addVerticalSpace(30),
                          Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const PrimaryInput(
                                hintText: 'E-mail',
                                autoFocus: true,
                              ),
                              addVerticalSpace(20),
                              PrimaryButton(
                                text: 'Send link',
                                onPressed: () {
                                  Navigator.pushNamed(context, '/emailSent');
                                },
                              ),
                            ],
                          ))
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

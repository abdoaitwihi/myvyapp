import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/auth/widgets/auth_outer_container.dart';
import 'package:myvy/screens/auth/widgets/auth_top_bar.dart';
import 'package:myvy/screens/widgets/primary_input.dart';
import 'package:myvy/utils/helpers.dart';
import 'package:myvy/widgets/buttons/primary_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                            'Sign up',
                            style: title1,
                          ),
                          addVerticalSpace(10),
                          const Text(
                            ' Create a new account',
                            style: text2,
                          ),
                          addVerticalSpace(30),
                          Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const PrimaryInput(
                                hintText: 'Name',
                              ),
                              addVerticalSpace(20),
                              const PrimaryInput(
                                hintText: 'E-mail',
                              ),
                              addVerticalSpace(20),
                              const PrimaryInput(
                                hintText: 'Password',
                              ),
                              addVerticalSpace(30),
                              PrimaryButton(
                                text: 'Sign up',
                                onPressed: () {},
                              ),
                              addVerticalSpace(20),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'By continuing Sign up you agree to the following Terms & Condition without reservations  ',
                                  style: text2,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              addVerticalSpace(50),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Already have an account?  '),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);

                                        Navigator.pushNamed(context, '/login');
                                      },
                                      child: const Text(
                                        'Sign in',
                                        style: text3,
                                      ))
                                ],
                              )
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

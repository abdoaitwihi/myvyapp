import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/auth/widgets/auth_outer_container.dart';
import 'package:myvy/screens/auth/widgets/auth_top_bar.dart';
import 'package:myvy/screens/widgets/primary_input.dart';
import 'package:myvy/utils/helpers.dart';
import 'package:myvy/widgets/buttons/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                            'Welcome !',
                            style: title1,
                          ),
                          addVerticalSpace(10),
                          const Text(
                            ' Sign in to continue',
                            style: text2,
                          ),
                          addVerticalSpace(30),
                          Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const PrimaryInput(
                                hintText: 'E-mail',
                              ),
                              addVerticalSpace(20),
                              const PrimaryInput(
                                hintText: 'Password',
                              ),
                              addVerticalSpace(10),
                              Align(
                                alignment: Alignment.topLeft,
                                child: CheckboxListTile(
                                  checkColor: whiteColor,
                                  activeColor: primaryColor,
                                  contentPadding: const EdgeInsets.all(0),
                                  value: true,
                                  title: const Text(
                                    "Remember me",
                                    style: text3,
                                  ),
                                  onChanged: (value) {},
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ),
                              ),
                              addVerticalSpace(30),
                              PrimaryButton(
                                text: 'Sign IN',
                                onPressed: () {},
                              ),
                              addVerticalSpace(20),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/forgotPassword');
                                },
                                child: const Text(
                                  'Forgot your password? ',
                                  style: text3,
                                ),
                              ),
                              addVerticalSpace(30),
                              DividedButton(
                                icon: 'assets/icons/google.svg',
                                text: 'Continue with Google',
                                color: primaryColor,
                                onPressed: () {},
                              ),
                              addVerticalSpace(10),
                              DividedButton(
                                icon: 'assets/icons/fb.svg',
                                text: 'Continue with Facebook',
                                color: primaryColor,
                                onPressed: () {},
                              ),
                              addVerticalSpace(10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Don’t have an account? '),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pushNamed(context, '/signup');
                                      },
                                      child: const Text(
                                        'Sign up',
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

class DividedButton extends StatelessWidget {
  const DividedButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);
  final icon;
  final text;
  final color;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50 - 2,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          color: color, // red as border color
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 0),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Container(
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1.0, color: color),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: SvgPicture.asset(
                    icon,
                    height: 30,
                  )),
              Expanded(
                child: Container(
                    child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: text4,
                )),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';

class SalonDescription extends StatelessWidget {
  const SalonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      child: Text(
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available',
          style: text5),
    );
  }
}

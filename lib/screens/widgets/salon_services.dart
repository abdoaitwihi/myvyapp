import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';
import 'package:myvy/screens/widgets/horizontal_padding.dart';
import 'package:accordion/accordion.dart';

class SalonServices extends StatelessWidget {
  const SalonServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      child: Accordion(
        disableScrolling: true,
        headerBackgroundColor: Color(0xFFF0F0F0),
        contentHorizontalPadding: 0,
        paddingListHorizontal: 0,
        paddingListBottom: 0,
        contentBackgroundColor: Colors.red,
        maxOpenSections: 1,
        headerPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        rightIcon:
            Icon(Icons.keyboard_arrow_down, color: Colors.black26, size: 20),
        children: [
          AccordionSection(
            contentHorizontalPadding: 0,
            header: Text('Introduction',
                style: TextStyle(color: Colors.black45, fontSize: 17)),
            content: Text('This is the introduction right here ...'),
          ),
          AccordionSection(
            contentHorizontalPadding: 0,
            header: Text('Introduction',
                style: TextStyle(color: Colors.black45, fontSize: 17)),
            content: Text('This is the introduction right here ...'),
          ),
          AccordionSection(
            contentHorizontalPadding: 0,
            header: Text('Introduction',
                style: TextStyle(color: Colors.black45, fontSize: 17)),
            content: Text('This is the introduction right here ...'),
          ),
          AccordionSection(
            contentHorizontalPadding: 0,
            header: Text('Introduction',
                style: TextStyle(color: Colors.black45, fontSize: 17)),
            content: Text('This is the introduction right here ...'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myvy/config/styles.dart';

class SalonCategories extends StatelessWidget {
  const SalonCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Cat> categories = [
      Cat(name: 'About', active: true),
      Cat(name: 'Services', active: false),
      Cat(name: 'Package', active: false),
      Cat(name: 'Gallery', active: false),
      Cat(name: 'Reviews', active: false),
    ];
    return Container(
      height: 40,

      // color: primaryColor,
      // margin: EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, i) {
          return SingleSalonCategory(data: categories[i], isFirst: i == 0);
        },
      ),
    );
  }
}

class SingleSalonCategory extends StatelessWidget {
  const SingleSalonCategory({
    Key? key,
    this.isFirst = false,
    required this.data,
  }) : super(key: key);
  final Cat data;
  final bool isFirst;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      margin: EdgeInsets.only(
          right: 10, bottom: 10, top: 5, left: isFirst ? 25 : 0),
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
      decoration: BoxDecoration(
        color: data.active == true ? primaryColor : Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              offset: Offset(0, 3),
              blurRadius: 6)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          data.name.toString(),
          style: data.active == true
              ? searchCategoryText
              : activeSearchCategoryText,
        ),
      ),
    );
  }
}

class Cat {
  String? name;
  bool? active;

  Cat({this.name, this.active});
}

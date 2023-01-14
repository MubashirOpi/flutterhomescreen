import 'package:flutter/material.dart';

import '../../../constans.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All Brands", "European Made"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          categories[index],
          style: TextStyle(
            color: selectedIndex == index ? SecondaryColor : TextColor,
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: DefaultPadding / 4, horizontal: DefaultPadding),

            height: 4,
            width: 40.0,
            color: selectedIndex == index
                ? SecondaryColor
                : Colors.transparent,
          ),
        )
        ],
      ),
    ),);
  }
}

import 'package:flutter/material.dart';

import '../../constans.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        bottomSheet: Row(
          children: const <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    top: DefaultPadding / 4, left: DefaultPadding),
                child: Icon(Icons.home, color: SecondaryColor, size: 30)),
            Padding(
                padding: EdgeInsets.only(
                    top: DefaultPadding / 4, left: DefaultPadding),
                child:
                    Icon(Icons.search, color: SecondaryLightColor, size: 30)),
            Padding(
                padding: EdgeInsets.only(
                    top: DefaultPadding / 4, left: DefaultPadding),
                child:
                    Icon(Icons.bookmark, color: SecondaryLightColor, size: 30)),
          ],
        ),
        floatingActionButton: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
            color: SecondaryLightColor,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          child: Stack(alignment: Alignment.center, children: <Widget>[
            IconButton(
              padding: const EdgeInsets.all(10),
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket_rounded, color: SecondaryColor, size: 30),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                alignment: Alignment.center,
                child: const Text('3'),
              ),
            )
          ]),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const SizedBox(
        height: 35,
        child: TextField(
          style: TextStyle(color: Colors.black),
          cursorColor: SecondaryColor,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: SecondaryColor),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.black12)),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        padding: const EdgeInsets.all(10),
        onPressed: () {},
        icon: Image.asset(
          'assets/profile.png',
        ),
      ),
      actions: const [
        SizedBox(width: DefaultPadding / 2),
      ],
    );
  }
}

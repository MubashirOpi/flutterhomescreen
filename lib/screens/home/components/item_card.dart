import 'package:flutter/material.dart';

import '../../../constans.dart';
import '../../../models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function()? press;

  const ItemCard({this.product, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
          elevation: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      color: SecondaryLightColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          top: DefaultPadding / 4, right: DefaultPadding / 4),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.bookmark,
                            color: SecondaryColor, size: 17),
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 15,
                    decoration: const BoxDecoration(
                      color: SecondaryLightColor,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.circle_rounded,
                        color: SecondaryColor, size: 30),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: DefaultPadding / 4, left: DefaultPadding / 4),
                child: Text(
                  product!.title!,
                  style: const TextStyle(color: TextColor),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: DefaultPadding / 4, vertical: 15),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Text(
                            '\USD ${product!.discount_price!}',
                            style:
                                const TextStyle(color: TextColor, fontSize: 12),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: DefaultPadding / 4),
                              child: Text(
                                'OMR',
                                style: TextStyle(color: TextColor, fontSize: 7),
                              )),
                          Text(
                            '${product!.price!}',
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red,
                                fontSize: 7),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: DefaultPadding / 4),
                              child: Text(
                                '5% Off',
                                style: TextStyle(
                                    color: TextColor,
                                    fontSize: 7,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ))),
            ],
          )),
    );
  }
}

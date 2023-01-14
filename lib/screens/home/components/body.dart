import 'package:flutter/material.dart';

import '../../../constans.dart';
import '../../../models/Product.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:DefaultPadding,horizontal: DefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                mainAxisSpacing: DefaultPadding,
                crossAxisSpacing: DefaultPadding,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

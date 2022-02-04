import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/Category.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
              (index) => Padding(
            padding: const EdgeInsets.only(
              right: defaultPadding,
            ),
            child: CategoryCard(
              title: demo_categories[index].title,
              icon: demo_categories[index].icon,
              press: () {  },
            ),
          ),
        ),
      ),
    );
  }
}

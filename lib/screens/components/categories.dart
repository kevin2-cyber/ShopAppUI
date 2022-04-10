import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/models.dart';
import 'components.dart';

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
          demoCategories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(
              right: defaultPadding,
            ),
            child: CategoryCard(
              title: demoCategories[index].title,
              icon: demoCategories[index].icon,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

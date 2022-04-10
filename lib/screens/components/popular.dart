import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/components/components.dart';

import '../../constants.dart';
import '../../models/models.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Popular',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                  left: defaultPadding,
                ),
                child: ProductCard(
                  image: demoProduct[index].image,
                  title: demoProduct[index].title,
                  bgColor: demoProduct[index].bgColor,
                  price: demoProduct[index].price,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

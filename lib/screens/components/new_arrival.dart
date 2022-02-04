import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/components/product_card.dart';
import 'package:shop_app_ui/screens/components/section_title.dart';

import '../../constants.dart';
import '../../models/Production.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'New Arival',
          pressSeeAll: (){},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(
                  left: defaultPadding,
                ),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  bgColor: demo_product[index].bgColor,
                  price: demo_product[index].price,
                  press: () {  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

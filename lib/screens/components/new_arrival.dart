import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/components/components.dart';
import 'package:shop_app_ui/screens/details/details_screen.dart';
import '../../constants.dart';
import '../../models/models.dart';

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
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: demoProduct[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

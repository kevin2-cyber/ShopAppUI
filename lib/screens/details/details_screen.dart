import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/Production.dart';

import '../components/color_dot.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                      'assets/icons/Heart.svg',
                    height: 20.0,
                  ),
              ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                  defaultPadding,
                  defaultPadding * 2,
                  defaultPadding,
                  defaultPadding,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                            product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text('\$' + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: defaultPadding,
                    ),
                    child: Text(
                        'A Henley shirt is a collarless pullover shirt,'
                          ' by a round neckline and a placket about 3 to 5 inches '
                            '(8 to 13cm) long and usually having 2-5 buttons.',
                    ),
                  ),
                  const Text(
                      'Colors',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      ColorDot(
                        color: circle1,
                        isActive: false,
                        press: () {},
                      ),
                      ColorDot(
                        color: circle2,
                        isActive: true,
                        press: () {},
                      ),
                      ColorDot(
                        color: circle3,
                        isActive: false,
                        press: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


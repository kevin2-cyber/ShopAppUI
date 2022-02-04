import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/screens/components/new_arrival.dart';
import '../components/categories.dart';
import '../components/popular.dart';
import '../components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('assets/icons/Location.svg'),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '15/2 New Texas',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/Notification.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Explore',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
            ),
            const Text(
              'Best Outfits for you',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: defaultPadding,
              ),
              child: SearchFrom(),
            ),
            const Categories(),
            const SizedBox(
              height: defaultPadding,
            ),
            const NewArrival(),
            const SizedBox(
              height: defaultPadding,
            ),
            const Popular(),
          ],
        ),
      ),
    );
  }
}




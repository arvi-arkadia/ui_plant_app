import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_plant_app/constants.dart';
import 'package:ui_plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:ui_plant_app/screens/home/components/title_with_morebtn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // it will prove us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(),
          TileWithMoreBtn(
            titile: 'Recomended',
            press: () {},
          ),
        ],
      ),
    );
  }
}

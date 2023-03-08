import 'package:flutter/material.dart';
import 'package:ui_plant_app/constants.dart';

class TileWithMoreBtn extends StatelessWidget {
  const TileWithMoreBtn({
    super.key,
    required this.titile,
    required this.press,
  });
  final String titile;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TilewithCustomUnderLine(
            text: titile,
          ),
          Spacer(),
          TextButton(
            onPressed: press,
            child: Text(
              "More",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
          ),
        ],
      ),
    );
  }
}

class TilewithCustomUnderLine extends StatelessWidget {
  const TilewithCustomUnderLine({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.25),
            ),
          )
        ],
      ),
    );
  }
}

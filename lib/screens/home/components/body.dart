import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plants/constants.dart';
import 'package:plants/screens/home/components/header_ith_search.dart';
import 'package:plants/screens/home/components/recomend_plants.dart';
import 'package:plants/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  void press() {
    print("pressed!");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Permmite usar scroll em dispositivos pequenos
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(title: 'Recomended', press: press),
        RecomendPlants(),
        TitleWithMoreBtn(title: "Featured Plants", press: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              FeaturedPlantCard(
                image: "assets/images/bottom_img_1.png",
                press: () {},
              ),
              FeaturedPlantCard(
                image: "assets/images/bottom_img_2.png",
                press: () {},
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

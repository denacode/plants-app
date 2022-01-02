import 'package:flutter/material.dart';
import 'package:plants/screens/home/components/featured_plants_card.dart';

class FeturedPlants extends StatelessWidget {
  const FeturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

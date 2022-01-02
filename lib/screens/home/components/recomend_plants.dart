import 'package:flutter/material.dart';
import 'package:plants/screens/home/components/recomend_plant_card.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 400,
            press: () {
              print('pressed!');
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 400,
            press: () {
              print('pressed!');
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Pamela",
            country: "Russia",
            price: 400,
            press: () {
              print('pressed!');
            },
          ),
        ],
      ),
    );
  }
}

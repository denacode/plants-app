import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plants/screens/home/components/header_ith_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    // Permmite usar scroll em dispositivos pequenos
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
              HeaderWithSearchBox(size: size)
            ],
          )
      );
    }
}

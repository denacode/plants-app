import 'package:flutter/material.dart';
import 'package:plants/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  TitleWithMoreBtn({Key? key, required this.title, required this.press})
      : super(key: key);

  final String title;
  final VoidCallback press;

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      backgroundColor: kPrimaryColor,
      primary: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          TextButton(
            style: flatButtonStyle,
            onPressed: press,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text("More"),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    this.text = "Text",
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2)),
          )
        ],
      ),
    );
  }
}

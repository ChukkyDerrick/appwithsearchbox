import 'package:flutter/material.dart';

import '../constants.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key,  required this.title, required this.press,
  });
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding ),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          TextButton(

              style: TextButton.styleFrom(backgroundColor: Colors.yellowAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),

              onPressed: () { press; },
              child: const Text("More",
                style: TextStyle(color: Colors.blueAccent),

              )
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    super.key, required this.text,
  });
  final  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children:  <Widget>[
          const                  Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4 ),
            child: Text("Recommended",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,

            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding/4),
              height: 7, color: kPrimaryColor.withOpacity(0.2),

            ),
          )
        ],
      ),
    );
  }
}


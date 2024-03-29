import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class HeaderWithSizedBox extends StatelessWidget {
  const HeaderWithSizedBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      child: Stack(
        children:<Widget>[
          Container(height: size.height *0.2 - 27,
            decoration: const BoxDecoration(color: kPrimaryColor,
                borderRadius: BorderRadius .only(
                  bottomLeft: Radius.circular(36 ),
                  bottomRight: Radius.circular(36 ),
                )
            ),
              child: Row(
              children: <Widget>[
                Text('L & C Foods',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),
                ),
                Spacer(),
                Image.asset("android/assets/images/food.png")

              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,

              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal:  kDefaultPadding ),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                    offset: const Offset (0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),

                  ),],
                ),
                child: Opacity(
                  opacity: 0.5,
                  child: Row(
                    children:<Widget>[
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset("android/assets/icons/search.svg")
                    ],
                  ),
                ),

              ))
        ],
      ),
    );
  }
}
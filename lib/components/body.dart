import 'package:flutter/material.dart';
import 'package:web_shoppfront/components/title_with_more_bbtn.dart';
import 'package:web_shoppfront/constants.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSizedBox(size: size),
            TitleWithMoreBtn(title: "Recommended", press: () {},
         ),
          Container(
              margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding/2,
              bottom: kDefaultPadding *2.5,
            ),
             width: size.width * 0.4,
            child: Column(
             children: <Widget>[Image.asset("android/assets/images/burger.png"),
               Container(
                 padding: const EdgeInsets.all(kDefaultPadding / 2 ),
                 decoration:  BoxDecoration(
                     color: Colors.white,
                     boxShadow: [BoxShadow(offset: const  Offset(0, 10),
                     blurRadius: 50,
                     color: kPrimaryColor.withOpacity(0.23),
                   )]
                 ),
                   child: Row(
                     children: <Widget>[RichText(text: TextSpan(children: [
                     TextSpan(text: "Burger\n".toUpperCase(),
                       style: Theme.of(context).textTheme.button,
                     ),
                     TextSpan(text: "large Size".toUpperCase(),
                       style: TextStyle(color: kPrimaryColor.withOpacity(0.5),),)
                     ]) 
                       ,),
                       Spacer(),
                       Text('\$79',
                       style: Theme.of(context)
                           .textTheme
                           .button
                           ?.copyWith(color: kPrimaryColor)
                       )
                     ],
                     
                 ),
               )
             ],
            ),
          )
        ],
      ),
    );
  }
}







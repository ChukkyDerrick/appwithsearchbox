
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_shoppfront/components/body.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:buildAppBar(),
        body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.limeAccent,
      elevation: 4,
      leading: IconButton(icon: SvgPicture.asset("android/assets/icons/menu.svg"), onPressed:(){},
      ) ,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/constans.dart';
import '../constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueAccent,
      height: UIhelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Positioned(
              top: 3.5.w,
              left: 3.w,
              child: Text(
                Constants.title,
                style: Constants.getTitleStyle(),
              )),
          Positioned(
            top: 0.w,
            right: 0.w,
            child: Container(
              //color: Colors.red,
              child: Image.asset(
                "assets/pokeball.png",
                fit: BoxFit.cover,
                width: UIhelper.getAppImageWidgetHeight(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

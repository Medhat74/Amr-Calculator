import 'package:amr_app/core/utils/size_config.dart';
import 'package:amr_app/src/app_color.dart';
import 'package:flutter/material.dart';

class CardChoice extends StatelessWidget {
  const CardChoice({Key? key, required this.txt,required this.fun}) : super(key: key);

  final String txt;
  final fun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        width: SizeConfig.screenWidth! * 0.7,
        height: SizeConfig.defaultSize! * 5,
        color: AppColors.KPrimaryColor,
        child: Center(
          child: Text(
            txt,
            style: TextStyle(fontSize:  SizeConfig.defaultSize! * 3 , color: Colors.white),
          ),
        ),
      ),
    );
  }
}

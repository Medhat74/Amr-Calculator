import 'package:flutter/material.dart';

import '../../../core/components/general_button.dart';
import '../../../core/utils/size_config.dart';
import '../../../src/app_color.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.txt, required this.imgPath,required this.fun, required this.price}) : super(key: key);

  final String txt;
  final String imgPath;
  final fun;
  final double price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: SizedBox(
        width: SizeConfig.defaultSize!* 20,
        height: SizeConfig.defaultSize!*10,
        child: Card(
          color: Colors.white,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  imgPath,
                  height: SizeConfig.defaultSize!*3,
                ),
              ),

              Expanded(
                flex: 2,
                child: Text(
                  txt,
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize!*1.7,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "$price",
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize!*2,
                    color: AppColors.KPrimaryRedColor,
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: SizedBox(
                    width: SizeConfig.defaultSize!*17,
                    child: GeneralButton(text: "Add to",function:  (){})
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/utils/size_config.dart';
import '../../../src/app_color.dart';
import '../../../src/app_text_style.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key,required this.fun, required this.index}) : super(key: key);

  List<Map<String, String>> events = [
    {"bgPath": "assets/images/abo_anas.png", "name": "ابو انس"},
    {"bgPath": "assets/images/koshary_hind.png", "name": "كشري هند"},
  ];

  final fun;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //AppNavigator.customNavigator(context: context, screen: ProductsView(category[index], 1), finish: false);
      },
      child: Card(

        color: AppColors.backgroundColor,
        child: Column(
          children: [

            Image.asset(
              'assets/images/logo.png',
              height: SizeConfig.defaultSize!*10,),

            Text(
              'name',
              style: TextStyle(
                fontSize: SizeConfig.defaultSize!*3,
                //fontWeight: FontWeight.bold[400],
              ),
              //'${cubit.categories[index].name}'
            ),
          ],
        ),
      ),
    );

  }
}

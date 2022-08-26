import 'package:amr_app/views/pre_home_view/components/resturant_item.dart';
import 'package:flutter/material.dart';

import '../../core/utils/naviagtion.dart';
import '../../src/app_color.dart';
import '../../src/app_text_style.dart';
import '../categories/components/category_item.dart';
import '../home_view.dart';
import 'components/card_choice.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.KPrimaryColor,
        elevation: 1.0,
        title :  Row(
          children: [
            Image.asset('assets/images/amr_face.png',
              height: 80,
              width: 150,
            ),
            const Text("Amr App "),
          ],
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              "المطاعم",
              style: AppTextStyle.headLine(),
            ),
            Expanded(child: ResturantItem(index: 0, fun: (){
              AppNavigator.customNavigator(context: context, screen: HomeView(), finish: true);
              print("hi");
            },)),
            Expanded(child: ResturantItem(index: 1, fun: (){
              AppNavigator.customNavigator(context: context, screen: HomeView(), finish: true);
            },)),

          ]),
        ),
      ),
    );;
  }
}

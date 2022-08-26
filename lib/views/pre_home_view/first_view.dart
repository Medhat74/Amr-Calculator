import 'package:amr_app/core/utils/naviagtion.dart';
import 'package:amr_app/core/utils/size_config.dart';
import 'package:amr_app/views/pre_home_view/components/card_choice.dart';
import 'package:amr_app/views/pre_home_view/second_view.dart';
import 'package:flutter/material.dart';

import '../../src/app_color.dart';
import '../home_view.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                CardChoice(txt: "Create Order", fun:(){
                  AppNavigator.customNavigator(context: context, screen: SecondView(), finish: true);
          } ),
              CardChoice(txt: "Load Order", fun:(){
                AppNavigator.customNavigator(context: context, screen: HomeView(), finish: true);
              } ),
            ],
          )
      ),
    );
  }
}

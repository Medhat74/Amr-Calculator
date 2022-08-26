import 'package:amr_app/core/utils/naviagtion.dart';
import 'package:amr_app/core/utils/size_config.dart';
import 'package:amr_app/views/pre_home_view/components/card_choice.dart';
import 'package:amr_app/views/pre_home_view/restaurants_list_view.dart';
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
          elevation: 0,
          title: Row(
            children: [
              Image.asset('assets/images/amr_face.png',
                height: 80,
                width: 150,
              ),
              const Text("Amr App "),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.defaultSize!*3,
            ),

          Text('Good food ',
          style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 4
          ),
        ),
        Text('Create your order ',
          style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 4
          ),
        ),

            SizedBox(
              height: SizeConfig.defaultSize!*5,
            ),
        Text('Please Select ... '),
        SizedBox(
          height: SizeConfig.defaultSize!*15,
        ),
        Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              OrderCategoryCard(
                image:'https://thumbs.dreamstime.com/z/grocery-pick-up-service-abstract-concept-vector-illustration-online-ordering-virus-protected-shopping-fresh-safe-products-198852736.jpg',
              text: 'Create New order',
            function: () {
              AppNavigator.customNavigator(
                  context: context, screen: RestaurantsListView(), finish: false);
            },

          ),
            OrderCategoryCard(
              function:
              ()=>  AppNavigator.customNavigator(context: context, screen: HomeView(),
                  finish: false),
              text: 'Load order',
              image: 'https://thumbs.dreamstime.com/z/grocery-pick-up-service-abstract-concept-vector-illustration-online-ordering-virus-protected-shopping-fresh-safe-products-198852736.jpg',

            ),

          ],
        )
    ),]
    ,
    )
    );
  }

}


class OrderCategoryCard extends StatelessWidget {

  final function;
  final text;
  final image;


  OrderCategoryCard({this.function, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: function,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(

            child: Column(
              children: [
                Expanded(child: Image.network(image)),
                Text(text)
              ],
            ),
          ),
        ),
      );
  }
}

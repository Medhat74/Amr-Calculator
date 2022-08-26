import 'package:amr_app/blocs/order/order_cubit.dart';
import 'package:amr_app/models/resturants.dart';
import 'package:amr_app/views/pre_home_view/components/new_restaurant_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils/naviagtion.dart';
import '../../src/app_color.dart';
import '../../src/app_text_style.dart';
import '../home_view.dart';


class RestaurantsListView extends StatelessWidget {
  const RestaurantsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.KPrimaryColor,
        elevation: 1.0,
        title: Row(
          children: [
            Image.asset(
              'assets/images/amr_face.png',
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
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "المطاعم",
                  style: AppTextStyle.headLine(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: restaurants.length,
                            itemBuilder: (context, index) {
                              return BlocConsumer<OrderCubit, OrderState>(
                                listener: (context, state) {
                                  // TODO: implement listener
                                },
                                builder: (context, state) {
                                  var cubit= OrderCubit.get(context);
                                  return GestureDetector(
                                      onTap: () {
                                        cubit.initOrder();
                                        AppNavigator.customNavigator(
                                            context: context,
                                            screen: HomeView(),
                                            finish: false);
                                      },
                                      child: NewRestaurantsItem(
                                          restaurant: restaurants[index]));
                                },
                              );
                              //   ResturantItem(
                              //   index: index,
                              //   fun: () {
                              //     AppNavigator.customNavigator(
                              //         context: context, screen: HomeView(), finish: true);
                              //   },
                              // );
                            }),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
    ;
  }
}

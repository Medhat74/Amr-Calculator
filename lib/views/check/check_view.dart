import 'package:amr_app/blocs/order_cubit/order_cubit.dart';
import 'package:amr_app/blocs/order_cubit/order_cubit.dart';
import 'package:amr_app/views/check/compnents/user_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/size_config.dart';
import '../../models/Order.dart';

class CheckView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Check View")
          /*Expanded(
            child: BlocConsumer<OrderCubit, OrderState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var orderCubit = OrderCubit.get(context);
                return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: orderCubit.users!.length,
                    //cubit.categories.length,
                    itemBuilder: (BuildContext context, int index) => UserOrder(
                          user: orderCubit.users![index]!,
                          index: index + 1,
                        ));
              },
            ),
          ),*/
        ],
      ),
    );
  }
}

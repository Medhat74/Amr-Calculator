import 'package:amr_app/blocs/order/order_cubit.dart';
import 'package:amr_app/services/hive/hive_helper.dart';
import 'package:flutter/material.dart';



class CompleteOrderView extends StatefulWidget {
  const CompleteOrderView({Key? key}) : super(key: key);

  @override
  State<CompleteOrderView> createState() => _CompleteOrderViewState();
}

class _CompleteOrderViewState extends State<CompleteOrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: (){
              HiveHelper.putOrder(OrderCubit.get(context).newOrder!);

            },
            child: Text('save'),

          ),

          Text('get ${
          HiveHelper.getOrder()
          }')
        ],
      ),
    );
  }
}

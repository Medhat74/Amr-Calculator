import 'package:flutter/material.dart';

import '../../../models/Order.dart';
import '../../../models/User.dart';

class UserOrder extends StatelessWidget {
  const UserOrder({Key? key, required this.user, required this.index, }) : super(key: key);

  final User user;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        "UserOrder"
      )
    ) ;
    /*ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: user.items!.length,
        //cubit.categories.length,
        itemBuilder: (BuildContext context, int index) =>
            Row(
              children: [
                Text(index.toString()),
                Column(
                  children: [
                    Text(user.name!),
                    //Text(user.items![index].name!),
                  ],
                ),
                //Text(user.items![index].price.toString()),
                

              ],
            ),

    );*/
  }
}

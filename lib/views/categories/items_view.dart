import 'package:amr_app/blocs/item_cubit/item_cubit.dart';
import 'package:amr_app/core/utils/size_config.dart';
import 'package:amr_app/src/app_color.dart';
import 'package:amr_app/views/categories/components/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/const.dart';

class ItemsView extends StatelessWidget {
  ItemsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocConsumer<ItemCubit,ItemState>(
        listener: (context , state){

        } ,
        builder: (context , state){
          var itemcubit = ItemCubit.get(context);
          return  Center(
            child: Column(
              children: [
                const Text("All Category"),

                Expanded(
                  child: aboAnasItems == null ? const CircularProgressIndicator(color:AppColors.KPrimaryColor) :
                  GridView.builder(
                    gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        mainAxisExtent: 130,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: aboAnasItems.length,
                    itemBuilder: (BuildContext context, int index){
                      return CardItem(txt: aboAnasItems[index].name!, imgPath: "assets/images/amr_face.png", fun: (){},
                          price: aboAnasItems[index].price!);
                    },
                  ),
                ),



              ],
            ),
          );
        },
      )

    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/item_cubit/item_cubit.dart';
import '../../src/app_text_style.dart';
import 'components/category_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ItemCubit, ItemState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = ItemCubit.get(context);
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text(
                "المطاعم",
                style: AppTextStyle.headLine(),
              ),
              ElevatedButton(onPressed: (){
                cubit.getItems();
              }, child: Text("dos"))

            ]),
          );
        },
      ),
    );
  }
}

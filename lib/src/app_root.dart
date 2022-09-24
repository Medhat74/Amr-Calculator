import 'package:amr_app/blocs/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'package:amr_app/views/pre_home_view/first_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/item_cubit/item_cubit.dart';
import '../blocs/order_cubit/order_cubit.dart';
import '../blocs/user_cubit/user_cubit.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(create: (BuildContext context) => NavigationBarCubit(),),
        BlocProvider(create: (BuildContext context) => ItemCubit(),),
        BlocProvider(create: (BuildContext context) => UserCubit(),),
        BlocProvider(create: (BuildContext context) => OrderCubit(),),
      ],
      child: MaterialApp(
        home: FirstView(),
      ),
    );
  }
}

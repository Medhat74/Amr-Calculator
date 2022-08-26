import 'dart:ui';

import 'package:amr_app/src/app_color.dart';
import 'package:amr_app/views/categories/categories_view.dart';
import 'package:amr_app/views/categories/items_view.dart';
import 'package:amr_app/views/check/check_view.dart';
import 'package:amr_app/views/order/guess_the_check_view.dart';
import 'package:amr_app/views/order/order_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  int currentIndex=0;
  Color color = AppColors.KPrimaryColor;
  List<Widget>views=[
    ItemsView(),
    GuessTheCheckView(),
    CheckView(),
  ];
  List<String>titles=[
    'Categories',
    'Order',
    'Check',
  ];
  NavigationBarCubit() : super(NavigationBarInitialState());
  static NavigationBarCubit get(context) => BlocProvider.of(context);
  void  ChangeIndex(int index,context)
  {

    currentIndex=index;


    emit(NavigationBarChangeState());
  }


}

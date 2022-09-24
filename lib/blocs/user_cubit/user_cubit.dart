import 'package:amr_app/models/Order.dart';
import 'package:amr_app/models/item.dart';
import 'package:amr_app/models/user.dart';
import 'package:amr_app/services/sql_helper/sql_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void addItem({
    required Item item,
  }) {
    emit(LoadingAddItemState());
    SqlHelper.insertItem(
      item: item,
    ).then((value){
      emit(SuccessAddItemState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(ErrorAddItemState(message: error.toString()));
    });
  }

  double calcOrder({required Order order, required User user,}){
    List<User> users = order.getUsersOfOrder();
    List<Item> userItems = user.getUserItems();
    double result = 0;
    for(var e in userItems){
      result += e.price!;
    }
    result += (order.deliveryPrice!)/(users.length-1);
    return result;
  }

  void addCheckPrice({required User user,required int checkPrice }){
    emit(LoadingUpdateCheckPriceState());
    SqlHelper.updateTable(tableName: SqlHelper.userTableName, colName: "checkPrice", id: user.id!, val: checkPrice,).then((value){
      emit(SuccessUpdateCheckPriceState());
    }).catchError((error){
      debugPrint(error.toString());
      emit(ErrorUpdateCheckPriceState(message: error.toString()));
    });
  }

}

import 'package:amr_app/models/user.dart';
import 'package:amr_app/services/sql_helper/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/Order.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());
  static OrderCubit get(context) => BlocProvider.of(context);

  late Order order;
  List<User>? users;

  void addUser({
    required User user,
  }) {
    emit(LoadingAddUserState());
    SqlHelper.insertUser(
      user: user,
    ).then((value) {
      emit(SuccessAddUserState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(ErrorAddUserState(message: error.toString()));
    });
  }

  double calcTotalOrder({required Order order}) {
    List<User> users = order.getUsersOfOrder();
    double result = 0;
    for (var e in users) {
      result += e.totalPrice!;
    }
    return result;
  }

  void addDeliveryPriceToOrder({
    required Order order,
    required double deliveryPrice,
  }) {
    emit(LoadingUpdateDeliveryPriceState());
    SqlHelper.updateTable(tableName: SqlHelper.orderTableName, colName: "deliveryPrice", id: order.id!, val: deliveryPrice,).then((value){
      emit(SuccessUpdateDeliveryPriceState());
    }).catchError((error){
      debugPrint(error.toString());
      emit(ErrorUpdateDeliveryPriceState(message: error.toString()));
    });
  }

  User getUserWhoCorrectGuess({required Order order}){
    emit(LoadingTotalWinnerPriceState());
    List<User> users = order.getUsersOfOrder();
    User winnerUser = users[0];
    for (var e in users){
      if ((e.checkPrice! - order.total!) < (winnerUser.checkPrice! - order.total!)){
        winnerUser = e;
      }
    }

    SqlHelper.updateTable(tableName: SqlHelper.userTableName, colName: "totalPrice", id: winnerUser.id!, val: winnerUser.totalPrice!-order.deliveryPrice!)
    .then((value) {
      emit(SuccessTotalWinnerPriceState());
    }).catchError((error){
      emit(ErrorTotalWinnerPriceState(message: error.toString()));
    });
    return winnerUser;
  }

}

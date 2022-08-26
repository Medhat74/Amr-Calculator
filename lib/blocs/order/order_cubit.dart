import 'package:amr_app/models/order.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/user.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());


  static OrderCubit get(context)=>BlocProvider.of(context);


  Order? newOrder;




  initOrder()
  {
    emit(OrderInitState());
    newOrder =Order(
      ID: 3,
      //TODO: Fix TIME
      date: 'nowwwww' ,
    );
  }

  createOder(int ?total  , List<User>? users, int? dilevryPrice )
  {
    emit(OrderCreateState());
    newOrder=Order(
      total: total ,
      users: users,
      dilveryPrice: dilevryPrice ,
    );

  }


}

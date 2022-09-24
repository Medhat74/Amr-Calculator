import 'package:amr_app/models/order_user.dart';
import 'package:amr_app/models/user.dart';
import 'package:amr_app/services/sql_helper/sql_helper.dart';


class Order {
  int? id ;
  DateTime? date;
  double? total;
  double? deliveryPrice;

  Order({this.id, this.date, this.total, this.deliveryPrice});

  Order.fromLocalDB(Map<String, dynamic> db){
    id = db['id'];
    date = db['date'];
    total = db['totalPrice'];
    deliveryPrice = db['deliveryPrice'];
  }

  List<User> getUsersOfOrder() {
    List<User> users = [];
    SqlHelper.getDataOfUser(
      tableName: SqlHelper.orderUserTableName,
      id: id!,
      colName: 'order_id',
    ).then((value) {
      for (var e in value) {
        OrderUser userItem = OrderUser.fromLocalDB(e);
        SqlHelper.getDataOfTableWithId(
          tableName: SqlHelper.itemsTableName,
          id: userItem.userId!,
        ).then((value) {
          for(var e in value){
            users.add(User.fromLocalDB(e));
          }
        });
      }
    });
    return users;
  }
}
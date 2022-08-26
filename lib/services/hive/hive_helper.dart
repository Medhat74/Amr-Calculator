import 'package:amr_app/models/order.dart';
import 'package:hive/hive.dart';

import '../../models/user.dart';

class HiveHelper {

 static putOrder(Order dataToStore) async {
    await Hive.openBox('orders');
    var box = Hive.box('orders');
    box.put('newOrder', dataToStore);
  }

  static Future getOrder() async {
    await Hive.openBox('orders');
    var box = Hive.box('orders');
    return box.get('newOrder', defaultValue: Order());
  }





}


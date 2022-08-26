import 'package:amr_app/services/dio/dio_helper.dart';
import 'package:amr_app/src/app_root.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/item.dart';
import 'models/order.dart';
import 'models/user.dart';

Future<void> main() async {
  DioHelper.init();


  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();


  

  Hive.registerAdapter((OrderAdapter()));
  Hive.registerAdapter((UserAdapter()));
  Hive.registerAdapter((ItemAdapter()));




  runApp(const AppRoot());
}

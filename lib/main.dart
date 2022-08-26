import 'package:amr_app/services/dio/dio_helper.dart';
import 'package:amr_app/src/app_root.dart';
import 'package:flutter/material.dart';

void main() {
  DioHelper.init();

  runApp(const AppRoot());
}

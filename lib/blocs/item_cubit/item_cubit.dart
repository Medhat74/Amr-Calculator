import 'dart:convert';

import 'package:amr_app/models/plates_hub.dart';
import 'package:amr_app/services/dio/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'item_state.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit() : super(ItemInitialState());
  static ItemCubit get(context) => BlocProvider.of(context);


}

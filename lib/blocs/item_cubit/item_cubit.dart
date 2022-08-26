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
  String  tok = "c5c6ee87e9ea25a5000cc6aa3bc166d43271f4fecaa9baf1fa7819a892c40338501acca7f77abb61cded5ab21e34c6a8cc4d633b4215da05c6d754a05fb6a9bd6acdde1ad7170cec76564411af2536db95df5ee64a4893de215fbb10c0471f1ce0f60a95dffcc2ca1ff677dcdc2c9c30a38db756807808975f01a69f8927a37f";
  PlatesHub? platesHub  ;
  getItems(){
    print("gooooo");
    emit(ItemLoadingState());
    DioHelper.getData(url: "https://mohamed-amr-calculator.herokuapp.com/api/plates" , query: {
      "populate[RESTAURANT_ID][filters][RESTAURANT_ID][\$eq]" : 1
    }
        , token: tok).then((value){
      print("Sucessss");
      var jsonData = jsonDecode(value.data);
      platesHub = PlatesHub.fromJson(jsonData);
      print(platesHub!.data!.length);
      emit(ItemSuccessState());
    }).catchError((error){
      print("falllllllse");
      print(error.toString());
      emit(ItemErrorState());
    });
    print("Finisssssssssssh");
  }

}

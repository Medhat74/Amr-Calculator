
import 'item.dart';
import 'package:hive/hive.dart';

part 'user.g.dart';



@HiveType(typeId: 2)
class User{
  @HiveField(0)
  List<Item>? items;
  @HiveField(1)
  String? name;
  @HiveField(2)
  int? id;
  @HiveField(3)
  double? totalPrice;
  @HiveField(4)
  int? checkPrice;
  @HiveField(5)
  bool? isCheck;


}
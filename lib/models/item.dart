
import 'package:hive/hive.dart';
part 'item.g.dart';


@HiveType(typeId:3)
class Item {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? special;
  @HiveField(2)
  int? price;
  @HiveField(3)
  int? id;
}
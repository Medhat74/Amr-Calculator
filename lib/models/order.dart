import 'package:amr_app/models/user.dart';
import 'package:hive/hive.dart';
part 'order.g.dart';


@HiveType(typeId: 1)
class Order {
  @HiveField(0)
  int? ID;
  @HiveField(1)
  List<User>? users;
  @HiveField(2)
  String? date;
  @HiveField(3)
  int? total;
  @HiveField(4)
  int? dilveryPrice;

  Order({this.ID, this.users, this.date, this.total, this.dilveryPrice});
}
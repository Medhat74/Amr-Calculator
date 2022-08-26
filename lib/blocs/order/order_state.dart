part of 'order_cubit.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class OrderCreateState extends OrderState {}
class OrderInitState extends OrderState {}

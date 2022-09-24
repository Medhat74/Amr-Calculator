part of 'order_cubit.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class LoadingAddUserState extends OrderState {}

class SuccessAddUserState extends OrderState {}

class ErrorAddUserState extends OrderState {
  final String message;
  ErrorAddUserState({
    required this.message,
  });
}

class LoadingUpdateDeliveryPriceState extends OrderState {}

class SuccessUpdateDeliveryPriceState extends OrderState {}

class ErrorUpdateDeliveryPriceState extends OrderState {
  final String message;
  ErrorUpdateDeliveryPriceState({
    required this.message,
  });
}

class LoadingTotalWinnerPriceState extends OrderState {}

class SuccessTotalWinnerPriceState extends OrderState {}

class ErrorTotalWinnerPriceState extends OrderState {
  final String message;
  ErrorTotalWinnerPriceState({
    required this.message,
  });
}
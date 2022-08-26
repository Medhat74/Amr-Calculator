part of 'item_cubit.dart';

@immutable
abstract class ItemState {}

class ItemInitialState extends ItemState {}
class ItemLoadingState extends ItemState {}
class ItemSuccessState extends ItemState {}
class ItemErrorState extends ItemState {}

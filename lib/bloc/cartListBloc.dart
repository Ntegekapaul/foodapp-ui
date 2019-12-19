import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:foodapp/bloc/provider.dart';
import 'package:foodapp/models/fooditem.dart';
import 'package:rxdart/rxdart.dart';

class CartListBloc extends BlocBase {

CartListBloc();

//Stream that receives a number and changes the count;
var _ListController = BehaviorSubject<List<FoodItem>>.seeded([]);
//output

CartProvider provider = CartProvider();

Stream<List<FoodItem> > get listStream => _ListController.stream;
//input
Sink<List<FoodItem>> get listSink =>_ListController.sink;

//dispose will be called automatically by closing its streams
addToList(FoodItem foodItem){
  listSink.add(provider.addToList(foodItem));
}

removeFromList(FoodItem foodItem){
  listSink.add(provider.removeFromList(foodItem));
}



}

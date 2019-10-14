import 'package:flutter_bloc_test/model/item_model.dart';
import 'package:rxdart/rxdart.dart';

enum CartEventType {
  add, remove
}

class CartEvent {
  final CartEventType type;
  final ItemModel item;

  CartEvent(this.type, this.item);
}

class CartBloc {
  final itemList = [
    ItemModel("MacBook", 2000000),
    ItemModel("Magic keyboard", 99000),
    ItemModel("Magic Mouse", 150000),
    ItemModel("ipad", 3000000),
    ItemModel("iphone", 500000),
  ];

  final _cartList = List<ItemModel>();

  final _cartListSubject = BehaviorSubject<List<ItemModel>>.seeded([]);

  Stream<List<ItemModel>> get cartList => _cartListSubject.stream;

  void add(CartEvent event) {
    switch (event.type) {
      case CartEventType.remove:
        _cartList.remove(event.item);
        break;
      case CartEventType.add:
        _cartList.add(event.item);
        break;
    }
    _cartListSubject.add(_cartList);
  }
}
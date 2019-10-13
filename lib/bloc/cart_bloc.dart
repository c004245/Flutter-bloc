import 'package:flutter_bloc_test/model/item_model.dart';
import 'package:bloc/bloc.dart';

enum CartEventType {
  add, remove
}

class CartEvent {
  final CartEventType type;
  final ItemModel item;

  CartEvent(this.type, this.item);
}

class CartBloc extends Bloc<CartEvent, List<ItemModel>> {

  @override
  List<ItemModel> get initialState => [];

  @override
  Stream<List<ItemModel>> mapEventToState(CartEvent event) async* {
    switch(event.type) {
      case CartEventType.add:
        currentState.add(event.item);
        break;
      case CartEventType.remove:
        currentState.remove(event.item);
        break;
    }
    yield currentState;
  }
}
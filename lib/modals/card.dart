import 'package:learn_app/modals/catalog.dart';

class CartModel {
  // catalog field
  late CatalogModal _catalog;

  // Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModal get catalog => _catalog;

  set catalog(CatalogModal newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice => items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemIds.add(int.parse(item.id.toString()));
  }

  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

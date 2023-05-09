import '../Cart_models/menuItemsModel.dart';
import 'items.dart';

List<MenuItemsModel> MenuItemsModelList = [];

List menuList = [
  {
    'image': 'assets/Cart_asset/pizaa.png',
    'name': 'Pizza',
    'totalItems': pizzaItems.length.toInt(),
    'items': pizzaItems,
  },
  {
    'image': 'assets/Cart_asset/img.png',
    'name': 'Biryani',
    'totalItems': BiryaniItem.length.toInt(),
    'items': BiryaniItem,
  },
  {
    'image': 'assets/Cart_asset/dess.png',
    'name': 'Desserts',
    'totalItems': dessertsItem.length.toInt(),
    'items': dessertsItem,
  },
  {
    'image': 'assets/Cart_asset/pasta.png',
    'name': 'Pasta',
    'totalItems': pastaItem.length.toInt(),
    'items': pastaItem,
  },
  {
    'image': 'assets/Cart_asset/beverages.png',
    'name': 'Beverages',
    'totalItems': beveragesItem.length.toInt(),
    'items': beveragesItem,
  },
];

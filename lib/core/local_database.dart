import 'package:books_app/home_page/model/favorite_book_model.dart';
import 'package:hive/hive.dart';

class LocalDB {

  Future<List<FavoriteBookModel>>? getFavorites() async {
    var _box = await Hive.openBox<FavoriteBookModel>('userFavorites');
    List<FavoriteBookModel>? _userFavorites = _box.values.toList();
    return _userFavorites;
  }

  Future<void> setFavorite(FavoriteBookModel favoriteBook) async {
    var _box = await Hive.openBox<FavoriteBookModel>('userFavorites');
    await _box.add(favoriteBook);
  }

  Future<void> deleteFavorite(int key) async {
    var _box = await Hive.openBox<FavoriteBookModel>('userFavorites');
    await _box.deleteAt(key);
  }

}
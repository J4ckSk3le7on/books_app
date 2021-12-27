import 'package:books_app/core/local_database.dart';
import 'package:books_app/home_page/model/favorite_book_model.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {

  // Variables
  List<FavoriteBookModel>? _favoriteBooks;

  // Getters
  List<FavoriteBookModel>? get favoriteBooks => _favoriteBooks;

  @override
  void onReady() {
    getFvoriteBooks();
    super.onReady();
  }

  Future<void> getFvoriteBooks() async {
    var _getBooks = await LocalDB().getFavorites();
    _getBooks ?? <FavoriteBookModel>[];
    _favoriteBooks = _getBooks;
    update();
  }

  Future<void> deleteFavorite(int index) async {
    _favoriteBooks!.removeAt(index);
  }

  String getCoverUrl(int? coverId) {
    return 'https://covers.openlibrary.org/b/id/$coverId-L.jpg';
  }

}
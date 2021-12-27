import 'package:books_app/core/local_database.dart';
import 'package:books_app/core/page_routes.dart';
import 'package:books_app/home_page/controller/home_page_controller.dart';
import 'package:books_app/home_page/model/favorite_book_model.dart';
import 'package:books_app/search_page/model/book_search_model.dart';
import 'package:get/get.dart';

class BookDetailPageController extends GetxController {

  final HomePageController _homePageController = Get.find<HomePageController>();

  // Variables
  BookData? _onlineBookData;
  FavoriteBookModel? _favoriteBookModel;
  bool? _isOnline;
  dynamic _argumentData;
  bool _hasTapped = false;
  int? _favoriteIndex;

  // Getters
  BookData? get onlineBookData => _onlineBookData;
  FavoriteBookModel? get favoriteBookModel => _favoriteBookModel;
  bool? get isOnline => _isOnline;

  @override
  void onInit() {
    _isOnline = Get.arguments['isOnline'] ??= false;
    _argumentData = Get.arguments['bookData'];
    _favoriteIndex = Get.arguments['favoriteIndex'];
    setBookData();
    super.onInit();
  }

  // Functions
  void setBookData() {
    if (isOnline == true) {
      _onlineBookData = _argumentData;
    } else {
      _favoriteBookModel = _argumentData;
    }
    update();
  }

  Future validateGesture() async {
    if (_hasTapped == true) {
      Get.snackbar('Espera...', 'Ya tienes agregado este libro en tus favoritos');
    } if (_isOnline == true) {
      var newBook = FavoriteBookModel(
        _onlineBookData!.title!,
        _onlineBookData!.coverI!,
        _onlineBookData!.authorName![0],
        _onlineBookData!.publisher![0],
        _onlineBookData!.publisher![0],
        _onlineBookData!.publishYear![0],
        _onlineBookData!.firstSentence == null ? 'Sin texto' : _onlineBookData!.firstSentence![0]
      );
      await LocalDB().setFavorite(newBook);
      _hasTapped = true;
      Get.snackbar('Genial!!!', 'Has agregado este libro a tus Favoritos');
    } else {
      await LocalDB().deleteFavorite(_favoriteIndex!);
      _homePageController.deleteFavorite(_favoriteIndex!);
      Get.offNamed(AppRoutes.homePage);
    }
  }

  String getCoverUrl(int? coverId) {
    return 'https://covers.openlibrary.org/b/id/$coverId-L.jpg';
  }

}
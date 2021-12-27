import 'package:books_app/book_detail_page/interface/book_detail_page.dart';
import 'package:books_app/home_page/interface/home_page.dart';
import 'package:books_app/search_page/interface/search_page.dart';
import 'package:get/get.dart';

class AppRoutes {

  static const String homePage = '/home';
  static const String searchPage = '/search';
  static const String bookDetailPage = '/bookDetail';

}

class AppPages {

  static final pages = [
    GetPage(
      name: AppRoutes.homePage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.searchPage,
      page: () => const SearchPage(),
    ),
    GetPage(
      name: AppRoutes.bookDetailPage,
      page: () => const BookDetailPage(),
    ),
  ];

}

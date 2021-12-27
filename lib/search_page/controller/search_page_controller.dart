import 'package:books_app/search_page/model/book_search_model.dart';
import 'package:books_app/search_page/provider/book_search_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController {

  // Variables
  List<BookData>? _booksList;
  final TextEditingController _searchController = TextEditingController();
  final int _pagerInfo = 10;
  int _page = 1;
  bool _isLoadingMore = false;
  final _scrollController = ScrollController();

  // Getters
  List<BookData>? get bookList => _booksList;
  TextEditingController get searchController => _searchController;
  bool get isLoadingMore => _isLoadingMore;
  ScrollController get scrollController => _scrollController;
  int get pagerInfo => _pagerInfo;
  int get page => _page;

  @override
  void onReady() {
    _scrollController.addListener(_onScroll);
    super.onReady();
  }


  // Functions
  Future searchQuery() async {
    var _queryBooks = await BookSearchProvider().searchBooks(
      _searchController.text, _page
    );
    _booksList = _queryBooks;
    update();
  }

  void _onScroll() {
    if (_page < _pagerInfo) {
      if (_scrollController.offset >= 
        _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        _isLoadingMore = true;
        _loadMore();
      }
    }
  }

  void _loadMore() async {
    _page++;
    if (_page <= _pagerInfo) {
      await BookSearchProvider().searchBooks(_searchController.text, _page).then((eventsFromServer) {
        _booksList?.addAll(eventsFromServer);
      });
    }
    update();
  }

  String getCoverUrl(int? coverId) {
    return 'https://covers.openlibrary.org/b/id/$coverId-L.jpg';
  }

}
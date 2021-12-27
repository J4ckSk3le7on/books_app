import 'dart:async';
import 'dart:convert';
import 'package:books_app/search_page/model/book_search_model.dart';
import 'package:http/http.dart' as http;

class BookSearchProvider {

  final String _baseUrl = 'openlibrary.org';

  Future<SearchBookModel> _processRespEvent(Uri url) async {
    final resp = await http.get(url);
    final decodedData = jsonDecode(resp.body);
    final dataRoute = SearchBookModel.fromJson(decodedData);
    var allData = dataRoute;
    return allData;
  }

  Future<List<BookData>> searchBooks(String query, int page) async {
    final url = Uri.https(_baseUrl, '/search.json', {
      'q'     :  query,
      'page'  :  page.toString(),
      'limit' :  '20'
    });
    final resp = await _processRespEvent(url);
    return resp.docs!;
  }

}

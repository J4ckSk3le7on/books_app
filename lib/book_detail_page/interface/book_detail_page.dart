import 'package:books_app/book_detail_page/controller/book_detail_page_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookDetailPageController>(
      init: BookDetailPageController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(_.isOnline == true ? _.onlineBookData!.title! : _.favoriteBookModel!.tittle),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: _.getCoverUrl(_.isOnline == true ? _.onlineBookData!.coverI! : _.favoriteBookModel!.coverId),
                      fit: BoxFit.fill,
                      width: 45.w,
                      height: 40.h,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    Container(width: 5),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                            width: 45.w,
                            child: Text('Autor: ' + (_.isOnline == true ? _.onlineBookData!.authorName![0] : _.favoriteBookModel!.author),
                              style: TextStyle(
                                fontSize: 16.sp
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          SizedBox(
                            height: 10.h,
                            width: 45.w,
                            child: Text('Publicadora: ' + (_.isOnline == true ? _.onlineBookData!.publisher![0] : _.favoriteBookModel!.publisher),
                              style: TextStyle(
                                fontSize: 16.sp
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          SizedBox(
                            height: 10.h,
                            width: 45.w,
                            child: Text('Editorial: ' + (_.isOnline == true ? _.onlineBookData!.publisher![0] : _.favoriteBookModel!.publisher),
                              style: TextStyle(
                                fontSize: 16.sp
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text('Año: ' + (_.isOnline == true ? '${_.onlineBookData!.publishYear![0]}' : '${_.favoriteBookModel!.year}'),
                            style: TextStyle(
                              fontSize: 16.sp
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_.isOnline == true ? _.onlineBookData!.firstSentence == null ? 
                  'Sin Texto' : _.onlineBookData!.firstSentence![0] : _.favoriteBookModel!.firstSentence,
                  style: TextStyle(
                    fontSize: 22.sp
                  ),
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _.validateGesture(),
            child: _.isOnline == true ? const Icon(Icons.bookmark_add) : const Icon(Icons.bookmark_remove),
          ),
        );
      },
    );
  }
}
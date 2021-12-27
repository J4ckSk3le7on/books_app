import 'package:books_app/core/page_routes.dart';
import 'package:books_app/search_page/controller/search_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPageController>(
      init: SearchPageController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Busqueda'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _.searchController,
                  onChanged: (data) {
                    _.searchQuery();
                  },
                  decoration: const InputDecoration(
                    hintText: 'Busca Autores, Libros y Mas...'
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onPanDown: (_) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: ListView(
                    controller: _.scrollController,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: _.bookList == null ? 0 : _.bookList!.length,
                        itemBuilder: (BuildContext context, int indexItem) {
                          if (_.bookList == null) {
                            return const Center(child: CircularProgressIndicator());
                          } else {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
                              child: ListTile(
                                onTap: () => Get.toNamed(AppRoutes.bookDetailPage,
                                  arguments: {
                                    'bookData' : _.bookList![indexItem],
                                    'isOnline' : true
                                  },
                                ),
                                leading: CachedNetworkImage(
                                  imageUrl: _.getCoverUrl(_.bookList![indexItem].coverI),
                                  fit: BoxFit.fill,
                                  width: 10.w,
                                  height: 30.h,
                                  placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                                title: Text(_.bookList![indexItem].title!),
                                subtitle: Text(_.bookList![indexItem].authorName != null ? _.bookList![indexItem].authorName![0] : 'Sin Data'),
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(
                        height: 80,
                        child: Center(child: _.page > _.pagerInfo ? 
                          Text('No hay mas Resultados',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.red,
                              fontWeight: FontWeight.bold
                            ),
                          ) : _.isLoadingMore == true ? const CircularProgressIndicator() : Container()
                        )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ); 
      },
    );
  }

}
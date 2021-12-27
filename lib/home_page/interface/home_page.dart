import 'package:books_app/core/page_routes.dart';
import 'package:books_app/home_page/controller/home_page_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Books App'),
            actions: [
              IconButton(
                onPressed: () => Get.toNamed(AppRoutes.searchPage),
                icon: const Icon(FontAwesomeIcons.search)
              )
            ],
          ),
          body: _.favoriteBooks == null ? const Center(child: CircularProgressIndicator()) : 
            _.favoriteBooks!.isEmpty == true ? RefreshIndicator(
              onRefresh: () => _.getFvoriteBooks(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.ghost,
                      size: 38.sp,
                    ),
                    const SizedBox(height: 8),
                    Text('No tienes Favoritos.',
                      style: TextStyle(
                        fontSize: 20.sp
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => _.getFvoriteBooks(),
                      child: Text('Volver a intentar',
                        style: TextStyle(
                          fontSize: 16.sp
                        ),
                      )
                    )
                  ],
                ),
              ),
            ) : ListView.builder(
            itemCount: _.favoriteBooks == null ? 1 : _.favoriteBooks!.length,
            itemBuilder: (BuildContext context, int indexItem) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () => Get.toNamed(AppRoutes.bookDetailPage,
                    arguments: {
                      'bookData' : _.favoriteBooks![indexItem],
                      'favoriteIndex' : indexItem
                    }
                  ),
                  leading: CachedNetworkImage(
                    imageUrl: _.getCoverUrl(_.favoriteBooks![indexItem].coverId),
                    fit: BoxFit.fill,
                    width: 10.w,
                    height: 30.h,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  title: Text(_.favoriteBooks![indexItem].tittle,
                    style: TextStyle(
                      fontSize: 16.sp
                    ),
                  ),
                  subtitle: Text(_.favoriteBooks![indexItem].author),
                ),
              );
            },
          ),
        ); 
      },
    );
  }

}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';
import 'core/page_routes.dart';
import 'home_page/model/favorite_book_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<FavoriteBookModel>(FavoriteBookModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'BooksApp',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homePage,
          getPages: AppPages.pages,
        );
      },
    );
  }

}

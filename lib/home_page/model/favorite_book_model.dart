import 'package:hive/hive.dart';

part 'favorite_book_model.g.dart';

@HiveType(typeId: 0)
class FavoriteBookModel {
  @HiveField(0)
  late String tittle;
  @HiveField(1)
  late int coverId;
  @HiveField(2)
  late String author;
  @HiveField(3)
  late String publisher;
  @HiveField(4)
  late String editorial;
  @HiveField(5)
  late int year;
  @HiveField(6)
  late String firstSentence;

  FavoriteBookModel(
    this.tittle,
    this.coverId,
    this.author,
    this.publisher,
    this.editorial,
    this.year,
    this.firstSentence
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteBookModelAdapter extends TypeAdapter<FavoriteBookModel> {
  @override
  final int typeId = 0;

  @override
  FavoriteBookModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteBookModel(
      fields[0] as String,
      fields[1] as int,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as int,
      fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteBookModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.tittle)
      ..writeByte(1)
      ..write(obj.coverId)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.publisher)
      ..writeByte(4)
      ..write(obj.editorial)
      ..writeByte(5)
      ..write(obj.year)
      ..writeByte(6)
      ..write(obj.firstSentence);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteBookModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

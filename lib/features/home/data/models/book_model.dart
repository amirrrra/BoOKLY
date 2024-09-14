import 'package:bookly/features/home/data/models/item.dart';

class BookModel {
  final List<Item> items;

  BookModel({required this.items});

  factory BookModel.fromJson(json) {
    return BookModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e))
          .toList(),
    );
  }
}

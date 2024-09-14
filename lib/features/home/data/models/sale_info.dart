import 'package:bookly/features/home/data/models/list_price.dart';

class SaleInfo {
  final ListPrice? listPrice;
  final String? buyLink;

  SaleInfo({required this.listPrice, required this.buyLink});

  factory SaleInfo.fromJson(json) {
    return SaleInfo(
      listPrice: json['listPrice'] == null
          ? null
          : ListPrice.fromJson(json['listPrice']),
      buyLink: json['buyLink'],
    );
  }
}

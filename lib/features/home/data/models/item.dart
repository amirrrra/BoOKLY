import 'package:bookly/features/home/data/models/sale_info.dart';
import 'package:bookly/features/home/data/models/volume_info.dart';

class Item {
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;

  Item({required this.volumeInfo, required this.saleInfo});

  factory Item.fromJson(json) {
    return Item(
      volumeInfo: json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo']),
      saleInfo:
          json['saleInfo'] == null ? null : SaleInfo.fromJson(json['saleInfo']),
    );
  }
}

import 'package:bookly/features/home/data/models/sale_info.dart';
import 'package:bookly/features/home/data/models/volume_info.dart';

class BookModel {
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;

  BookModel({required this.volumeInfo, required this.saleInfo});

  factory BookModel.fromJson(json) {
    return BookModel(
      volumeInfo: json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo']),
      saleInfo:
          json['saleInfo'] == null ? null : SaleInfo.fromJson(json['saleInfo']),
    );
  }
}

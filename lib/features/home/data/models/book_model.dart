import 'package:bookly/features/home/data/models/volume_info.dart';

class BookModel {
  final VolumeInfo? volumeInfo;

  BookModel({required this.volumeInfo});

  factory BookModel.fromJson(json) {
    return BookModel(
      volumeInfo: json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo']),
     
    );
  }
}

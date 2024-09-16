import 'package:bookly/features/home/data/models/image_links.dart';

class VolumeInfo {
  final String? title;
  final String? author;
  final String? publisher;
  final String? description;
  final String? publishedDate;
  final String? previewLink;
  final String? language;
  final num? averageRating;
  final int? ratingsCount;
  final int? pageCount;
  final ImageLinks? imageLinks;

  VolumeInfo({
    required this.title,
    required this.author,
    required this.publisher,
    required this.description,
    required this.publishedDate,
    required this.previewLink,
    required this.language,
    required this.averageRating,
    required this.ratingsCount,
    required this.pageCount,
    required this.imageLinks,
  });

  factory VolumeInfo.fromJson(json) {
    return VolumeInfo(
      title: json['title'],
      author: json['authors'][0],
      publisher: json['publisher'],
      description: json['description'],
      publishedDate: json['publishedDate'],
      previewLink: json['previewLink'],
      language: json['language'],
      averageRating: json['averageRating'],
      ratingsCount: json['ratingsCount'],
      pageCount: json['pageCount'],
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks']),
    );
  }
}

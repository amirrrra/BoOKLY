import 'package:bookly/features/home/data/models/image_links.dart';

class VolumeInfo {
  final String? title;
  final String? author;
  final String? publisher;
  final String? description;
  final String? previewLink;
  final ImageLinks? imageLinks;

  VolumeInfo({
    required this.title,
    required this.author,
    required this.publisher,
    required this.description,
    required this.previewLink,
    required this.imageLinks,
  });

  factory VolumeInfo.fromJson(json) {
    return VolumeInfo(
      title: json['title'],
      author: json['authors'][0],
      publisher: json['publisher'],
      description: json['description'],
      previewLink: json['previewLink'],
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks']),
    );
  }
}

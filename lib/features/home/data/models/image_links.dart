class ImageLinks {
  final String? thumbnail;

  ImageLinks({required this.thumbnail});

  factory ImageLinks.fromJson(json) {
    return ImageLinks(thumbnail: json['thumbnail']);
  }
}

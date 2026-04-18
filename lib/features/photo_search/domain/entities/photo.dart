class Photo {
  final int id;
  final String imageUrl;
  final String photographer;

  Photo({
    required this.id,
    required this.imageUrl,
    required this.photographer,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'],
      imageUrl: json['src']['medium'],
      photographer: json['photographer'],
    );
  }
}
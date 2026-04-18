class Photo {
  final int id;
  final String previewUrl;
  final String detailUrl;
  final String photographer;

  Photo({
    required this.id,
    required this.previewUrl,
    required this.detailUrl,
    required this.photographer,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    final src = json['src'] as Map<String, dynamic>;

    return Photo(
      id: json['id'] as int,
      previewUrl: src['medium'] as String,
      detailUrl: (src['large2x'] ?? src['large'] ?? src['original'] ?? src['medium']) as String,
      photographer: json['photographer'] as String,
    );
  }
}
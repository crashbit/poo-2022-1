class Album {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Album({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Album.fromJson(Map<String, Object?> jsonMap) {
    return Album(
        albumId: jsonMap["albumId"] as int,
        id: jsonMap["id"] as int,
        title: jsonMap["title"] as String,
        url: jsonMap["url"] as String,
        thumbnailUrl: jsonMap["thumbnailUrl"] as String);
  }
}

class PostData {
  int reviews;
  String title;
  String content;
  List<String> photos;
  List<String> places;

  PostData(
      {required this.reviews,
      required this.title,
      required this.content,
      required this.photos,
      required this.places});
}

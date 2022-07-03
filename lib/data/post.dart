class Post {
  String? content;
  String? image;
  int? noLikes;
  Post.fromJason(Map data) {
    content = data['content'];
    image = data['image'];
    noLikes = data['noLikes'];
  }
}

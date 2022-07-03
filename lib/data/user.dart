class User {
  String? name;
  String? image;
  User.fromJason(Map data) {
    name = data['name'];
    image = data['image'];
  }
}

class MyCategory {
  late int id;
  late String name;
  late String image;
  late String createdAt;
  late String updatedAt;

  MyCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}

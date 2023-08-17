class Lecture {
  late int id;
  late int categoryId;
  late String name;
  late String description;
  late String ownerCourse;
  late String image;
  late int countStudent;
  late int evaluation;
  late String language;
  late String createdAt;
  late String updatedAt;

  Lecture.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    description = json['description'];
    ownerCourse = json['owner_course'];
    image = json['image'];
    countStudent = json['count_student'];
    evaluation = json['evaluation'];
    language = json['language'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}

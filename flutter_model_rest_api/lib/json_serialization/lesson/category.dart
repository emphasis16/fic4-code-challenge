// ignore_for_file: avoid_print

import 'dart:convert';

// {
//     "id": 3,
//     "name": "Furniture",
//     "image": "https://i.imgur.com/RLnJJyQ.jpeg",
//     "creationAt": "2023-11-06T10:57:31.000Z",
//     "updatedAt": "2023-11-06T10:57:31.000Z"
// }

// extension dart data generator

class Category {
  final int id;
  final String name;
  final String image;
  final DateTime creationAt;
  final DateTime updatedAt;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'image': image});
    result.addAll({'creationAt': creationAt.toIso8601String()});
    result.addAll({'updatedAt': updatedAt.toIso8601String()});

    return result;
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      creationAt: DateTime.parse(map['creationAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));
}

void main() {
  String jsonString = """
{
    "id": 3,
    "name": "Furniture",
    "image": "https://i.imgur.com/RLnJJyQ.jpeg",
    "creationAt": "2023-11-06T10:57:31.000Z",
    "updatedAt": "2023-11-06T10:57:31.000Z"
}
""";

  final category = Category.fromJson(jsonString);
  print(category.creationAt.toString());
  print(category.image);
  print(category.toJson());
}

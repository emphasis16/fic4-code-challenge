// {
//     "userId": 1,
//     "id": 3,
//     "title": "omnis laborum odio"
// }

import 'dart:convert';

class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(String jsonData) {
    return Album.fromMap(jsonDecode(jsonData));
  }

  factory Album.fromMap(Map<String, dynamic> jsonData) {
    return Album(
      userId: jsonData['userId'] ?? 0,
      id: jsonData['id'] ?? 0,
      title: jsonData['title'] ?? '',
    );
  }
}

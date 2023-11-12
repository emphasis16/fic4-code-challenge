import 'dart:convert';

class AlbumRequestModel {
  String title;
  
  AlbumRequestModel({
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'title': title});
  
    return result;
  }

  factory AlbumRequestModel.fromMap(Map<String, dynamic> map) {
    return AlbumRequestModel(
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AlbumRequestModel.fromJson(String source) => AlbumRequestModel.fromMap(json.decode(source));
}

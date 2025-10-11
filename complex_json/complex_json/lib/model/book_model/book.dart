import 'package:complex_json/model/book_model/volume_info.dart';

class Book {
  VolumeInfo? volumeInfo;

  Book({this.volumeInfo});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      volumeInfo: (json['volumeInfo'] != null &&
              json['volumeInfo'] is Map<String, dynamic>)
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
    );
  }
}

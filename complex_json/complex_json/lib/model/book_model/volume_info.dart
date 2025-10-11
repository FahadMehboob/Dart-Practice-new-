import 'package:complex_json/model/book_model/image_links.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  ImageLinks? imageLinks;

  VolumeInfo({this.title, this.authors, this.imageLinks});

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    var volumeParsed = VolumeInfo();

    volumeParsed.title = json['title'] ?? 'No Title';
    volumeParsed.authors = [];

    if (json['authors'] != null && json['authors'] is List) {
      for (var author in json['authors']) {
        if (author is String) {
          volumeParsed.authors!.add(author);
        }
      }
    }

    if (json['imageLinks'] != null &&
        json['imageLinks'] is Map<String, dynamic>) {
      volumeParsed.imageLinks = ImageLinks.fromJson(json['imageLinks']);
    }

    return volumeParsed;
  }
}

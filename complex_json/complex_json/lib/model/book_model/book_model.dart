import 'package:complex_json/model/book_model/book.dart';

class BookModel {
  int? totalItems;
  List<Book>? items;

  BookModel({this.items, this.totalItems});

  factory BookModel.fromJson(Map<String, dynamic> jsonData) {
    var bookModel = BookModel();
    bookModel.totalItems = jsonData['totalItems'] ?? 0;
    bookModel.items = [];

    if (jsonData['items'] != null && jsonData['items'] is List) {
      for (var bookJson in jsonData['items']) {
        if (bookJson is Map<String, dynamic>) {
          bookModel.items!.add(Book.fromJson(bookJson));
        }
      }
    }

    return bookModel;
  }
}

import 'package:lesson4/model/book.dart';

class DataBaseController {
  static Future<List<Book>> getBooksFromDB() async {
    await Future.delayed(const Duration(seconds: 2));
    List<Book> temp =[...bookList, ...bookList, ...bookList];
    return temp;
  }

  
}
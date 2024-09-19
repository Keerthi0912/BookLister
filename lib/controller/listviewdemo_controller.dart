import 'package:lesson4/controller/database_controller.dart';
import 'package:lesson4/view/listviewdemo_screen.dart';

class ListViewDemoController {
  ListViewState state;
  ListViewDemoController(this.state);

  Future<void> loadBookList() async {
     state.model.bookList = await DataBaseController.getBooksFromDB();
    state.callSetState(() { });
  }
}

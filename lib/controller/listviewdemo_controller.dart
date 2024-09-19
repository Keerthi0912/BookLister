import 'package:flutter/material.dart';
import 'package:lesson4/controller/database_controller.dart';
import 'package:lesson4/model/book.dart';
import 'package:lesson4/view/bookdetailview_screen.dart';
import 'package:lesson4/view/listviewdemo_screen.dart';

class ListViewDemoController {
  ListViewState state;
  ListViewDemoController(this.state);

  Future<void> loadBookList() async {
    state.model.bookList = await DataBaseController.getBooksFromDB();
    state.callSetState(() {});
  }

  void onTap(int index) {
    if(state.model.selected.isEmpty) {
      Book book = state.model.bookList![index];
    Navigator.pushNamed(
      state.context,
      BookDetailViewScreen.routeName,
      arguments: book,
    );
    }else {
      onLongPress(index);
    }
  }

  void onLongPress(int index) {
    state.callSetState((){
     if (state.model.selected.contains(index)){
      state.model.selected.remove(index);
    }else {
      state.model.selected.add(index);
    }
    });
  }

  void cancel() {
    state.callSetState(() {
      state.model.selected.clear();
    });
  }

  void delete() {
    state.model.selected.sort(); //ascending order
    for (int i = state.model.selected.length -1; i >= 0; i--) {
      state.model.bookList?.removeAt(state.model.selected[i]);
    }
    state.callSetState(() {
      state.model.selected.clear();
    });
  }
}

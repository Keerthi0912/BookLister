import 'package:flutter/material.dart';
import 'package:lesson4/controller/listviewdemo_controller.dart';
import 'package:lesson4/model/book.dart';
import 'package:lesson4/model/listviewscreen_model.dart';
import 'package:lesson4/view/web_image.dart';

class ListViewDemoScreen extends StatefulWidget {
  const ListViewDemoScreen({super.key});

  static const routeName = '/listViewDemoScreen';

  @override
  State<StatefulWidget> createState() {
    return ListViewState();
  }

}

class ListViewState extends State<ListViewDemoScreen> {
  late ListViewDemoController con;
  late ListViewScreenModel model;

  @override
  void initState()  {
    super.initState();
    con = ListViewDemoController(this);
    model = ListViewScreenModel();
    con.loadBookList();
    print('ListView Screen: initState()');
  }

  @override
  void dispose() {
    print('ListView Screen: dispose()');
    super.dispose();
  }

  void callSetState(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    print('ListView Screen: build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Demo'),
        actions: model.selected.isEmpty ? null : [ 
          IconButton(onPressed: con.delete, icon: const Icon(Icons.delete),),
          IconButton(onPressed: con.cancel, icon: const Icon(Icons.cancel),),
        ],
      ),
      body:  bodyView(),
    );
  }


  Widget bodyView() {
    if (model.bookList == null) {
      return const Center(child:  CircularProgressIndicator());
    }else{
      return bookListView(model.bookList!);
    }
  }

Widget bookListView(List<Book> bookList) {
  return ListView.builder(
   itemCount: bookList.length,
   itemBuilder: (BuildContext context, int index) {
    Book book = bookList[index];
    return ListTile(
      leading: WebImage(url: book.imageURL),
      trailing: const Icon(Icons.arrow_right),
      tileColor: model.selected.contains(index) ? Colors.lime[100] : null,
      title: Text(book.title),
      onTap: () => con.onTap(index),
      onLongPress: () => con.onLongPress(index),
    );
   },
  );
}
}
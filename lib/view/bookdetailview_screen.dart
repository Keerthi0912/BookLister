import 'package:flutter/material.dart';
import 'package:lesson4/model/book.dart';
import 'package:lesson4/view/web_image.dart';

class BookDetailViewScreen extends StatefulWidget {
  const BookDetailViewScreen(this.book, {super.key});

  final Book book;

  static const routeName = '/bookDetailViewScreen';

  @override
  State<StatefulWidget> createState() {
    return BookDetailState();
  }
}

class BookDetailState extends State<BookDetailViewScreen> {
  @override
  Widget build(BuildContext context) {
    String description = widget.book.description.trim();
    description = description.replaceAll(RegExp(r'\s+'), ' ');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail View'),
      ),
      body: Card(
        color: Colors.lime[100],
        elevation: 16.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: WebImage(
                  url: widget.book.imageURL,
                  height: 250.0,
                )),
                Text(
                  widget.book.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8.0,),
                Text('Authors: ${widget.book.authors}', style: Theme.of(context).textTheme.bodyLarge,),
                const SizedBox(height: 8.0,),
                Text('Published in ${widget.book.year}', style: Theme.of(context).textTheme.bodyLarge,),
                const SizedBox(height: 8.0,),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

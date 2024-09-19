class Book {
  String title;
  String authors;
  int year;
  String description;
  String imageURL;

  Book(
      {required this.title,
      required this.authors,
      required this.year,
      required this.description,
      required this.imageURL});
}

List<Book> bookList = [
  Book(
    title: 'Flutter Cookbook - Second Edition: 100+ real-world recipes',
    authors: 'Simone Alessandria',
    year: 2023,
    description: """
     Write, test and publish your web, desktop, and 
     embedded apps with this most up-to-date book on Flutter 
     using the Dart programming language.
    """,
    imageURL: 'https://m.media-amazon.com/images/I/61lyfGFQTbL._SY342_.jpg',
  ),
  Book(
    title: 'Flutter for Beginners - Third Edition: Cross-platform mobile',
    authors: ' Thomas Bailey',
    year: 2023,
    description: """
      There have been many attempts at creating
      frameworks that are truly cross-platform,
      but most struggle to create a native-like experience at
      high-performance levels. Flutter achieves this with an 
      elegant design and a wealth of third-party plugins, solidifying its status as the future of mobile app development.
    """,
    imageURL: 'https://m.media-amazon.com/images/I/61LRJZqtVZL._SY425_.jpg',
  ),
  Book(
    title: 'Software Architecture with C# 12 and .NET 8 - Fourth Edition:',
    authors: ' Gabriel Baptista ',
    year: 2024,
    description: """
    Software Architecture with C# 12 and .NET 8
    puts high-level design theory to work in a .NET
    context, teaching you the key skills, technologies, 
    and best practices required to become an effective .NET software architect.
    """,
    imageURL: 'https://m.media-amazon.com/images/I/71l6Q2NBw6L._SY342_.jpg',
  ),
  Book(
    title: 'Flutter in Action',
    authors: ' Eric Windmill',
    year: 2019,
    description: """
    With Flutter, you can build mobile applications
    using a single, feature-rich SDK that includes
    everything from a rendering engine to a testing
    environment. Flutter compiles programs written in Google’s
    intuitive Dart language to platform-specific code so your iOS and Android games
    """,
    imageURL: 'https://m.media-amazon.com/images/I/71BKV6gMx5L._SY342_.jpg',
  ),
  Book(
    title: 'FLUTTER ESSENTIALS - UI DESIGN AND TESTING AND DEBUGGING',
    authors: ' JP PARKER',
    year: 2024 ,
    description: """
    Flutter Essentials - UI Design with Flutter: A Beginner's Journey
    to Crafting Stunning Mobile Apps
    """,
    imageURL: 'https://m.media-amazon.com/images/I/61Z4OSXbzkL._SY342_.jpg',
  ),
  Book(
   title: 'Beginning Flutter: A Hands On Guide to App Development',
   authors: ' Marco L. Napoli ',
   year: 2019,
   description: """
   Beginning Flutter: A Hands-On Guide to App Development is the
   essential resource for both experienced and novice developers
   interested in getting started with Flutter―the powerful new
   mobile software development kit.
   """,
   imageURL: 'https://m.media-amazon.com/images/I/615MlDNFxJL._SY342_.jpg',
  ),
];

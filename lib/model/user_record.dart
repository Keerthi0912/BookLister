enum Classification {
  firstYear,
  secondYear,
  thirdYear,
  fourthYear,
  graduate,
}

enum ProgLanguages {
  dart,
  java,
  javascript,
  python,
  cpp,
  csharp,
}

enum Major {
  cs,
  se,
  ds,
  ce,
}

class UserRecord {
  String email;
  String password;
  String name;
  String phone;
  int age;
  Classification classification;
  Major major;
  Map<ProgLanguages, bool>? progLanguages;

  UserRecord({
    this.email = '',
    this.password = '',
    this.name = '',
    this.age = 18,
    this.phone = '',
    this.classification = Classification.firstYear,
    this.major = Major.cs,
    this.progLanguages,
  }) {
    progLanguages ??= {};
    for(var e in ProgLanguages.values) {
      progLanguages![e] ??=false;
    }
  }
}

List<UserRecord> fakeUserDB = [
  UserRecord(
    email: '1@uco.com',
    password: '111111',
    name: 'Ada Lovelace',
    phone: '4059742000',
    age: 24,
    classification: Classification.graduate,
    major: Major.cs,
    progLanguages: {
      ProgLanguages.dart: true,
      ProgLanguages.cpp: true,
    }
  ),
  UserRecord(
    email: '2@uco.com',
    password: '222222',
    name: 'Charles Babbage',
    phone: '4059742345',
    age: 18,
    classification: Classification.secondYear,
    major: Major.se,
    progLanguages: {
      ProgLanguages.csharp: true,
      ProgLanguages.java: true,
       ProgLanguages.javascript: true,
    }
  ),
];

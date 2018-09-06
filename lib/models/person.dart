import 'package:meta/meta.dart';

class Person {
  String name;
  String emailId;
  int age;
  double weight;
  _Gender gender;

  Person({
    @required this.name,
    @required this.emailId,
    this.age,
    this.weight,
    this.gender,
  });
}

enum _Gender { MALE, FEMALE }

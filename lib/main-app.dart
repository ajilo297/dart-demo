import 'models/application.dart';
import 'models/person.dart';

class MainApplication extends Application {
  List<Person> _personList = [];
  @override
  void run() {
    addPerson();
    printPerson(_personList);
  }

  void printPerson(List<Person> persons) {
    for (var person in persons) {
      print(person);
    }
  }

  void addPerson() {
    Person person = Person(
      name: 'Ajil Oommen',
      emailId: 'ajil@altorumleren.com',
    );
    _personList.add(person);
    person = Person(
      name: 'Ajoy Oommen',
      emailId: 'ajoy91ad@gmail.com',
      age: 27,
      gender: Gender.MALE,
      weight: 54.0,
    );
    _personList.add(person);
  }
}

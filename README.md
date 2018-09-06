# Dart Test

## Introduction
This project is to explore different features that Dart has to offer.

## Prequisites
Download and configure Dart SDK from the [official page](https://www.dartlang.org/tools/sdk#install). The documentation is pretty much exhaustive and you should not have any trouble with the configuration.

## Usage
To clone this repository, run 
```bash
git clone https://github.com/ajilo297/dart-demo.git
```
Go to the toplevel project directory and run command to get the dependencies.
```bash
cd <PROJECT PATH>
pub get
```
Once the packages and dependencies have been resolved, run the app with
```bash
dart bin/main.dart
```
## Modules

Some modules which have been covered in this project are :
- [Class and constructor](#Person)

### Person
This class is to demonstrate how easy it is to define a class. One of the most appreciated features is the ability to create named [optional parameters](https://www.dartlang.org/guides/language/language-tour#functions).
#### lib/models/person.dart
```dart
class Person {
  String name;
  String emailId;
  int age;
  double weight;
  Gender gender;

  Person({
    @required this.name,
    @required this.emailId,
    this.age,
    this.weight,
    this.gender,
  });
}

enum Gender { MALE, FEMALE }
```
import 'package:meta/meta.dart';

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

  @override
  String toString() {
    String result = getLabeledString(
      label: 'Name',
      value: name,
      isFirstLine: true,
    );
    result += getLabeledString(
      label: 'Email ID',
      value: emailId,
    );
    if (age != null) result += getLabeledString(value: age, label: 'Age');
    if (weight != null)
      result += getLabeledString(label: 'Weight', value: weight);
    if (gender != null)
      result += getLabeledString(label: 'Gender', value: gender);

    result += getLabeledString(label: null, value: null, isLastLine: true);
    return result;
  }

  String getLabeledString({
    @required String label,
    @required value,
    bool isFirstLine = false,
    bool isLastLine = false,
  }) {
    if (isLastLine) return '\n-----------------------';
    String result = '';
    if (!isFirstLine) result += '\n';
    result += '$label: $value';
    return result;
  }
}

enum Gender { MALE, FEMALE }
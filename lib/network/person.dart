import 'package:json_annotation/json_annotation.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class Person {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  Person({this.firstName, this.lastName, this.dateOfBirth});
}

import 'dart:math';

class Student {
  String name;
  int score;

  Student(this.name, this.score);
  @override
  String toString() {
    return 'Name: ${name}, Score: ${score}';
  }

  @override
  bool operator ==(o) => o is Student && o.score == score;
}
// Challenge  1 - Create 3 Students
// 1. Ram - 87
// 2. Shyam - 80
// 3. Ghanshyam - 91

// Put these students in a list called 'students'

// Challenge 2 - Print out the student name and score for all students

// Challenge 3 - Find student with Maximum score and print his name and score

// Challenge 4 - Sort the students based on their scores

void main() {
  var s1 = Student('Ram', 87);
  var s2 = Student('Shyam', 80);
  var s3 = Student('Ghanshyam', 91);
  var students = [s1, s2, s3];
  for (var student in students) {
    print(student);
  }
  print(students.reduce((Student a, Student b) => a.score > b.score ? a : b));
  students.sort((Student a, Student b) =>
      a.score == b.score ? 0 : (a.score < b.score ? -1 : 1));
  print(students);
}

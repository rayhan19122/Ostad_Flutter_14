import 'dart:io';

void main() {
  // print("Enter total number of students: ");
  // int student_number = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> students = [];
  Map<int, bool> track = {}; // to track used IDs

  while (true) {
    int c;
    print("1. Enter Student Info\n2. Exit\n");
    stdout.write("Enter your choice : ");
    c = int.parse(stdin.readLineSync()!);

    if (c == 2)
      break;
    else if (c < 1 || c > 2) {
      print("Invalid Choice.\n");
      continue;
    }
    int id;
    String? name;
    int score;

    // Take unique ID
    while (true) {
      stdout.write("\nEnter student ID: ");
      id = int.parse(stdin.readLineSync()!);
      if (track.containsKey(id)) {
        print("❌ ID already taken. Please enter another.");
      } else {
        track[id] = true; // mark as used
        break;
      }
    }

    stdout.write("Enter student name: ");
    name = stdin.readLineSync();

    stdout.write("Enter student score: ");
    score = int.parse(stdin.readLineSync()!);
    print('\n');

    // Add to list
    students.add({'Id': id, 'Name': name, 'Score': score});
  }

  // Print all students
  print("\n✅ All Student Records:");
  for (var student in students) {
    print(
      "Id: ${student['Id']}, Name: ${student['Name']}, Score: ${student['Score']}",
    );
  }

  print("Total number of student : ${students.length}");
  List<num> marks = [];
  for (var s in students) {
    marks.add(s['Score']);
  }

  marks.sort((a, b) => b.compareTo(a));
  print("Highest marks : ${marks.first}");
  print("Lowest marks : ${marks.last}");

  students.sort((a, b) => b['Score'].compareTo(a['Score']));

  for (var stu in students) {
    print("${stu['Name']} ${stu['Score']}");
  }
}

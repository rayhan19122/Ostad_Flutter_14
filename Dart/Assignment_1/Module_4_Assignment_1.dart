import 'dart:io';

void main() {
  List<Map<String, dynamic>> student = [];
  Map<num, bool> check_id = {};

  while (true) {
    int choice;
    String? name;
    num id;
    num score;

    print("\n1. Enter student information\n2. Exit\n");
    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 2)
      break;
    else if (choice > 2 || choice < 1)
      print("Invalid Choice!!!");
    else {
      while (true) {
        stdout.write("\nEnter student ID : ");
        id = num.parse(stdin.readLineSync()!);

        if (check_id.containsKey(id)) {
          print("ID Already Taken. Please Enter another!!!");
        } else {
          check_id[id] = true;
          break;
        }
      }
      stdout.write("Enter student name : ");
      name = stdin.readLineSync();

      while (true) {
        stdout.write("Enter student score : ");
        score = num.parse(stdin.readLineSync()!);
        if (score > 100 || score < 0)
          print("Invalid Score!!!");
        else
          break;
      }
      student.add({"Id": id, "Name": name, "Score": score});
    }
  }

  for (var st in student) {
    num sc = st['Score'];

    if (sc >= 80)
      st['Grade'] = 'A+';
    else if (sc >= 70 && sc <= 79)
      st['Grade'] = 'A';
    else if (sc >= 60 && sc <= 69)
      st['Grade'] = 'A-';
    else if (sc >= 50 && sc <= 59)
      st['Grade'] = 'B';
    else if (sc >= 40 && sc <= 49)
      st['Grade'] = 'C';
    else if (sc >= 33 && sc <= 39)
      st['Grade'] = 'D';
    else
      st['Grade'] = 'F';
  }
  print("\n${'-' * 20}Output${'-' * 20}");
  if (student.isEmpty)
    print("\nNo student found!!!");
  else {
    student.sort((a, b) => b['Score'].compareTo(a['Score']));
    print('');
    for (var st in student) {
      print("Name : ${st['Name']}, Id : ${st['Id']}, Score : ${st['Score']}, Grade : ${st['Grade']}");
    }
    print("\nTotal number of student : ${student.length}\n");
    print(
      "Highest Score : ${student.first['Score']}, achieved by ${student.first['Name']}",
    );
    print(
      "Lowest Score : ${student.last['Score']}, achieved by ${student.last['Name']}",
    );
  }
}

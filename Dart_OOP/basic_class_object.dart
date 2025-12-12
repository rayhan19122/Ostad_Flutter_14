/*
✅ Task 1:

Create a Student class with:
name,id, department
method displayInfo() to print them

❗Then create 2 objects:

Student 1: "Rayhan", 101, "CSE"
Student 2: "Rafi", 102, "EEE"

Print both.
*/

class Student {
  String name = 'null';
  String id = 'null';
  String department = 'null';

  displayInfo() {
    print("Name : $name, Id : $id, Department : $department");
  }
}

void main() {
  Student student1 = Student();
  Student student2 = Student();

  student1.name = 'Rayhan';
  student1.id = '22235203446';
  student1.department = 'CSE';
  student1.displayInfo();

  student2.name = 'Abir';
  student2.id = '22235203436';
  student2.department = 'EEE';

  student2.displayInfo();

}

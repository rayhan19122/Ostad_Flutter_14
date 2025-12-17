class Student {
  String name;
  String studentID;
  double gpa;

  Student(this.gpa, this.name, this.studentID);

  void printStudentInfo() {
    print("Name : $name , ID : $studentID, GPA : $gpa");
  }

  Student.freshman(this.name, this.studentID) : gpa = 0.0;
}

void main() {
  Student starStudent = Student(3.99, 'Rayhan', 'S446');

  Student freshman = Student.freshman('Arko', 'S4123');

  starStudent.printStudentInfo();
  freshman.printStudentInfo();
}

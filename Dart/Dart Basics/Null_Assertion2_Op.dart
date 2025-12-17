import 'dart:io';

void main() {
  String? fullName;
  print("Enter name (or leave empty): ");
  fullName = stdin.readLineSync();

  // Treat empty string as null
  if (fullName == "") fullName = null;

  print(fullName!.length);
  //print(fullName?.length);

  // // Using null assertion operator
  // try {
  //   print("Length: ${fullName!.length}");
  // } catch (e) {
  //   print("Error: You entered null! $e");
  // }
}

import 'dart:io';

void main() {
  // Nullable variable
  String? fullName;

  // User input নেওয়া (simulate getNameFromServer)
  print("Enter your name (or press Enter for null): ");
  fullName = stdin.readLineSync();

  //print(fullName!.length);
  print(fullName?.length);

  // Null assertion operator ব্যবহার
  // try {
  //   print("Your name length is: ${fullName!.length}");
  // } catch (e) {
  //   print("Error: You entered null! ${e}");
  // }
}

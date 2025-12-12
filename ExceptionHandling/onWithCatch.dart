void main() {
  try {
    int.parse('abc');
    num x = 10 ~/ 0;
    print(x);
  } on FormatException catch(e,s) {
    print('Error Message, $e\n$s');
  } catch (e) {
    print('Caught $e');
  }
}

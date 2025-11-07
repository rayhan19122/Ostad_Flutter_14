void main() {
  String multiline = ''' A quick brown fox jumps 
over the lazy dogs.
''';
  print(multiline);

  String raw = r"This is a \n raw string. \t and it'll be same as like as it";
  print(raw);

  String name = 'rayhan';
  print(name.toUpperCase());
  print(name.length);

  print(raw.contains('and'));
  String replaced_message = raw.replaceAll('and', 'however');
  print(replaced_message);

  String mostofa = "    Mostofa kids are awesome";
  print(mostofa.trim());
  List<String> words = mostofa.split(' ');
  print(words);

  String alpha = "ABCDEF";
  List<String> letters = alpha.split('');
  print(letters);
  print(letters.join(''));

  print(alpha.substring(2, 5));
  print(alpha.startsWith('A'));
  print(alpha.endsWith('F'));
  print(letters.join('-'));

  print(raw.indexOf(' is'));

  String numStr = '446';
  int numint = int.parse(numStr);
  print(numint+10);

  double numDouble = 44.54123;
  String doubleStr = numDouble.toString();
  print(doubleStr + '5');
  print(numDouble.toStringAsFixed(2));
}

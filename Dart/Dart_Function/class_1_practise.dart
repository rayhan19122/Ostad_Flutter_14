greetings(name) => print("Hello $name");

addition(a, b) => (a + b);

void dis_Sum(a, b) {
  print("Sum : ${a + b}");
}

checkEvenOdd(x) {
  if ((x & 1) == 1)
    return 'Odd';
  else
    return 'Even';
}

num squreFunct(x) => x * x;

int largestOfThree(a, b, c) {
  if (a > b && a > c)
    return a;
  else if (b > a && b > c)
    return b;
  else
    return c;
}

void main() {
  greetings('Rayhan');

  print(addition(45, 46));
  dis_Sum(69, 31);
  print("Square : ${squreFunct(7)}");

  int n = 8;
  print(" $n is ${checkEvenOdd(n)} number");

  print("Largest is ${largestOfThree(4, 3, 9)}");

  var myfunct = greetings;
  myfunct('Nafisa Afrin');
}

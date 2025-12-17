/*
**If a constructor is used inside a static field initialization,
that constructor runs BEFORE main() starts.**
this is not just allowed — this is exactly how Dart is designed. 
🔥 FINAL TRUTH (Remember This Always)
**Static variables are initialized when the class is loaded,

and this happens before main() runs.**

So if static initialization needs a constructor →
that constructor is called at that moment.*/

class Test {
  static final Test obj = Test();  // constructor here!

  Test() {
    print("Constructor called!");
  }
}

void main() {
  print("Inside main");
}


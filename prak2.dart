<<<<<<< HEAD
void main(){
    for (int i = 0; i < 10; i++) {
     print('Nama saya adalah Fulan, sekarang berumur ${18 - i}');
    }
}


// Percobaan Kelompok NULL SAFETY
class Person {
  String? name;
  int? age;

  void sayHello() {
    print("Hello, my name is ${name ?? 'Anonymous'}");
  }
}

void main() {
  Person person = Person();
  person.sayHello(); // Output: Hello, my name is Anonymous
  person.name = "Alice";
  person.sayHello(); // Output: Hello, my name is Alice
}
=======
void main(){
    for (int i = 0; i < 10; i++) {
     print('Nama saya adalah Fulan, sekarang berumur ${18 - i}');
    }
}


// Percobaan Kelompok NULL SAFETY
class Person {
  String? name;
  int? age;

  void sayHello() {
    print("Hello, my name is ${name ?? 'Anonymous'}");
  }
}

// void main() {
//   Person person = Person();
//   person.sayHello(); // Output: Hello, my name is Anonymous
//   person.name = "Alice";
//   person.sayHello(); // Output: Hello, my name is Alice
// }
>>>>>>> 0f672af (mobile)

<<<<<<< HEAD
// void main() {
//   String test = "test2";
//   if (test == "test1") {
//     print("Test1");
//   } else if (test == "test2") {
//     print("Test2");
//   } else {
//     print("Something else");
//   }

//   if (test == "test2") print("Test2 again");
// }

// void main() {
//   String test = "true";
//   if (test == "true") {
//     print("Kebenaran");
//   }
// }

// void main() {
//   int counter = 0;  
//   while (counter < 33) {
//     print(counter);
//     counter++;
//   }
// }

// void main() {
//   int counter = 0;  
//   do {
//     print(counter);  
//     counter++;       
//   } while (counter < 77);  
// }

// void main() {
//   for (int index = 10; index < 27; index++) {
//     print(index);
//   }
// }

// void main() {
//   for (int index = 10; index < 27; index++) {
//     if (index == 21) break;               
//     else if (index > 1 && index < 7) continue;  
//     print(index);                         
//   }
// }

void main() {
  String name = "Agung Rizky Setiawan";
  String nim = "2241720187";

  for (int i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan prima: $i");
      print("Nama: $name");
      print("NIM: $nim");
      print("--------------------");
    }
  }
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

=======
// void main() {
//   String test = "test2";
//   if (test == "test1") {
//     print("Test1");
//   } else if (test == "test2") {
//     print("Test2");
//   } else {
//     print("Something else");
//   }

//   if (test == "test2") print("Test2 again");
// }

// void main() {
//   String test = "true";
//   if (test == "true") {
//     print("Kebenaran");
//   }
// }

// void main() {
//   int counter = 0;  
//   while (counter < 33) {
//     print(counter);
//     counter++;
//   }
// }

// void main() {
//   int counter = 0;  
//   do {
//     print(counter);  
//     counter++;       
//   } while (counter < 77);  
// }

// void main() {
//   for (int index = 10; index < 27; index++) {
//     print(index);
//   }
// }

// void main() {
//   for (int index = 10; index < 27; index++) {
//     if (index == 21) break;               
//     else if (index > 1 && index < 7) continue;  
//     print(index);                         
//   }
// }

void main() {
  String name = "Agung Rizky Setiawan";
  String nim = "2241720187";

  for (int i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan prima: $i");
      print("Nama: $name");
      print("NIM: $nim");
      print("--------------------");
    }
  }
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

>>>>>>> 0f672af (mobile)

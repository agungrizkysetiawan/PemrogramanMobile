<<<<<<< HEAD
// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// void main() {

//   final List<String?> list = List.filled(5, null); 

//   list[1] = 'Agung Rizky S'; 
//   list[2] = '2241720187';     

//   // Mencetak seluruh list
//   print('Index 0: ${list[0]}');
//   print('Index 1: ${list[1]}');
//   print('Index 2: ${list[2]}');
//   print('Index 3: ${list[3]}');
//   print('Index 4: ${list[4]}');
// }

// void main () {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);
// }


// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {}; 


//   names1.add('Agung Rizky S');
//   names1.add('2241720187');

//   names2.addAll({'Agung Rizky S', '2241720187'});

//   print('names1: $names1');
//   print('names2: $names2');
// }


// void main() {
// var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);

// }


// void main() {
//   var gifts = {
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': '1'
//   };

//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   print('gifts: $gifts');

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: '2'
//   };

//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';

//   print('nobleGases: $nobleGases');
// }


// void main() {
//   // Deklarasi dan inisialisasi Map 'gifts'
//   var gifts = {
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 'golden rings',
//     'name': 'Agung Rizky S',
//     'NIM': '2241720187'
//   };

//   // Mencetak 'gifts' Map
//   print('gifts: $gifts');

//   // Deklarasi dan inisialisasi Map 'nobleGases'
//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 'argon',
//     1: 'Agung Rizky S',
//     3: '2241720187'
//   };

//   // Mencetak 'nobleGases' Map
//   print('nobleGases: $nobleGases');

//   // Deklarasi dan inisialisasi Map 'mhs1'
//   var mhs1 = <String, String>{};
//   mhs1['name'] = 'Agung Rizky S';
//   mhs1['NIM'] = '2241720187';

//   // Mencetak 'mhs1' Map
//   print('mhs1: $mhs1');

//   // Deklarasi dan inisialisasi Map 'mhs2'
//   var mhs2 = <int, String>{};
//   mhs2[1] = 'Agung Rizky S';
//   mhs2[2] = '2241720187';

//   // Mencetak 'mhs2' Map
//   print('mhs2: $mhs2');
// }


// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list);   
//   print(list2);
//   print(list2.length);
// }


// void main() {
//   var list1 = [1, 2, null];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
// }

// void main() {
//   var list1 = [1, 2, null];
//   print('list1: $list1'); 

//   var nimList = ['2241720187']; 
//   var list3 = [0, ...list1, ...nimList]; 

//   print('list3: $list3');
//   print('Length of list3: ${list3.length}');
// }

// void main() {
//   bool promoActive = true; 
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   print(nav);
// }

// void main() {
//   bool promoActive = false; 
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   print(nav);
// }

// void main() {
//   String login = 'employee'; 

//   var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];

//   print(nav2);
// }


// void main () {
//   var listOfInts = [1, 2, 3];
// var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
// assert(listOfStrings[1] == '#1');
// print(listOfStrings);
// }

// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }

// void main () {
//   (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
// }



// void main() {
//   // Record type annotation in a variable declaration
//   (String, int) mahasiswa = ('Agung Rizky S', 2241720187);
//   print(mahasiswa);
// }

// void main() {
//   var mahasiswa2 = {'first': 'first', 'a': 2, 'b': true, 'last': 'last'};
  
//   print(mahasiswa2['first']); // Prints 'first'
//   print(mahasiswa2['a']); // Prints 2
//   print(mahasiswa2['b']); // Prints true
//   print(mahasiswa2['last']); // Prints 'last'

//   mahasiswa2['first'] = 'Agung Rizky S'; 
//   mahasiswa2['last'] = 2241720187;
  
//   print(mahasiswa2['first']); 
//   print(mahasiswa2['last']); 
// }

// void greet(String name, int age) {
//   print('Name: $name, Age: $age');
// }

// void main() {
//   greet('Agung', 20); 
// }


// void greet(String name) {
//   print('Hello, $name!');
// }

// void main() {
//   var greetFunction = greet; 
//   greetFunction('Agung'); 
// }

=======
// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// void main() {

//   final List<String?> list = List.filled(5, null); 

//   list[1] = 'Agung Rizky S'; 
//   list[2] = '2241720187';     

//   // Mencetak seluruh list
//   print('Index 0: ${list[0]}');
//   print('Index 1: ${list[1]}');
//   print('Index 2: ${list[2]}');
//   print('Index 3: ${list[3]}');
//   print('Index 4: ${list[4]}');
// }

// void main () {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);
// }


// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {}; 


//   names1.add('Agung Rizky S');
//   names1.add('2241720187');

//   names2.addAll({'Agung Rizky S', '2241720187'});

//   print('names1: $names1');
//   print('names2: $names2');
// }


// void main() {
// var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);

// }


// void main() {
//   var gifts = {
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': '1'
//   };

//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   print('gifts: $gifts');

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: '2'
//   };

//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';

//   print('nobleGases: $nobleGases');
// }


// void main() {
//   // Deklarasi dan inisialisasi Map 'gifts'
//   var gifts = {
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 'golden rings',
//     'name': 'Agung Rizky S',
//     'NIM': '2241720187'
//   };

//   // Mencetak 'gifts' Map
//   print('gifts: $gifts');

//   // Deklarasi dan inisialisasi Map 'nobleGases'
//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 'argon',
//     1: 'Agung Rizky S',
//     3: '2241720187'
//   };

//   // Mencetak 'nobleGases' Map
//   print('nobleGases: $nobleGases');

//   // Deklarasi dan inisialisasi Map 'mhs1'
//   var mhs1 = <String, String>{};
//   mhs1['name'] = 'Agung Rizky S';
//   mhs1['NIM'] = '2241720187';

//   // Mencetak 'mhs1' Map
//   print('mhs1: $mhs1');

//   // Deklarasi dan inisialisasi Map 'mhs2'
//   var mhs2 = <int, String>{};
//   mhs2[1] = 'Agung Rizky S';
//   mhs2[2] = '2241720187';

//   // Mencetak 'mhs2' Map
//   print('mhs2: $mhs2');
// }


// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list);   
//   print(list2);
//   print(list2.length);
// }


// void main() {
//   var list1 = [1, 2, null];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
// }

// void main() {
//   var list1 = [1, 2, null];
//   print('list1: $list1'); 

//   var nimList = ['2241720187']; 
//   var list3 = [0, ...list1, ...nimList]; 

//   print('list3: $list3');
//   print('Length of list3: ${list3.length}');
// }

// void main() {
//   bool promoActive = true; 
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   print(nav);
// }

// void main() {
//   bool promoActive = false; 
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

//   print(nav);
// }

// void main() {
//   String login = 'employee'; 

//   var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];

//   print(nav2);
// }


// void main () {
//   var listOfInts = [1, 2, 3];
// var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
// assert(listOfStrings[1] == '#1');
// print(listOfStrings);
// }

// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }

// void main () {
//   (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
// }



// void main() {
//   // Record type annotation in a variable declaration
//   (String, int) mahasiswa = ('Agung Rizky S', 2241720187);
//   print(mahasiswa);
// }

// void main() {
//   var mahasiswa2 = {'first': 'first', 'a': 2, 'b': true, 'last': 'last'};
  
//   print(mahasiswa2['first']); // Prints 'first'
//   print(mahasiswa2['a']); // Prints 2
//   print(mahasiswa2['b']); // Prints true
//   print(mahasiswa2['last']); // Prints 'last'

//   mahasiswa2['first'] = 'Agung Rizky S'; 
//   mahasiswa2['last'] = 2241720187;
  
//   print(mahasiswa2['first']); 
//   print(mahasiswa2['last']); 
// }

// void greet(String name, int age) {
//   print('Name: $name, Age: $age');
// }

// void main() {
//   greet('Agung', 20); 
// }


// void greet(String name) {
//   print('Hello, $name!');
// }

// void main() {
//   var greetFunction = greet; 
//   greetFunction('Agung'); 
// }

>>>>>>> 0f672af (mobile)

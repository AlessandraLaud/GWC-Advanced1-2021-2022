main() {
  // this is a sing line comment

  /* 
   * This is a multi line comment
   *
  */

  /*************** 
   Variables
  ***************/
  // define and assign string variable
  var nickName = 'sandra';
  String myName = 'Alessandra';
  myName = 'Alessandra Laudando';

  print("My nickname is: ${nickName}");
  print("My name is: ${myName}");

  // define and not assign
  String name2;

  print('This is the unassigned variable: ${name2}');

  // final and const variable
  const int birthYear = 1996;
  // birthYear = 2004; // uncomment to break program

  print("My birth year is: ${birthYear}");
}

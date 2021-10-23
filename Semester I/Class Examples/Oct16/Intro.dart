main() {
  // this is a single line comment

  /* 
   * This is a multi line comment
   * Hello
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

  final int randomNumber = 333;
  // randomNumber = 878; // uncomment to break program

  print("My birth year is: ${birthYear}");

  /*************** 
   Data Types
  ***************/
  int number = 2;
  double money = 12.50;
  bool isColdOutside = true;

  /*************** 
   Arrays/Lists
 ***************/
  var numberList = [1, 2, 3];
  List<int> numberList2 = [4, 5, 6];
  var randomList = [1, 'Dog', true];

  print('This is my number list: ${numberList2}');

  // accessing items in a list
  List<String> halloweenThings = [
    "Pumpkins",
    "Candy",
    "Scary movies",
    "Pumpkin Spice latte"
  ];

  String candy = halloweenThings[1];
  print("Get the candy string from the halloweenThings array: ${candy}");

  String coffeeFlavor = halloweenThings[3];
  print(
      "Get the coffee flavor string from the halloweenThings array: ${coffeeFlavor}");

  // length of an array
  int lengthOfHalloweenThingsArray = halloweenThings.length;
  print("lengthOfHalloweenThingsArray: ${lengthOfHalloweenThingsArray}");

  // get the first and last element of an array
  String firstElement = halloweenThings.first;
  String lastElement = halloweenThings.last;

  print(
      "This is the first element of the halloweenThings array: ${firstElement}");
  print(
      "This is the last element of the halloweenThings array: ${lastElement}");

  // how to add and remove things from an array
  halloweenThings.add("Candy Corn");
  halloweenThings.add("Ghosts");
  halloweenThings.add("Salem");
  print('halloweenThings list: ${halloweenThings}');

  halloweenThings.remove("Candy Corn");
  halloweenThings.removeAt(1);
  print('halloweenThings list: ${halloweenThings}');

  // removes items from 0 to 2 not including 2
  halloweenThings.removeRange(0, 2);
  print('halloweenThings list: ${halloweenThings}');

  // Set: exactly like an array but only contains unique values and it uses {} instead of []
  var listOfUniqueNumbers = {4, 5, 6}; // this is a set

  // this is wrong because there are duplicate numbers
  // var listOfUniqueNumbers = {4, 5, 6, 6};

  // List<int> numberList2 = [4, 5, 6, 6]; this is an array

  /*************** 
   Maps
  ***************/
  Map<String, String> whatIAteToday = {
    "breakfast": "eggs",
    "lunch": "Chicken sandwich",
    "dinner": "Steak",
  };

  print(whatIAteToday);

  whatIAteToday["breakfast"] = "omelette";

  /* SOCK QUESTION
   * You are given a bunch of colored socks: Blue, Red, Green
   * You need to tell me how many pairs we have of each color
   * ['green', 'red', 'green', 'blue', 'blue']
  */
  Map<String, int> numberOfSocks = {"red": 1, "green": 2, "blue": 2};

  var breakfast = whatIAteToday["breakfast"];
  print("What did I eat for breakfast? ${breakfast}");

  var userData = {
    'name': 'Alessandra Laudando',
    'height': '5" 1',
    'favoriteColor': 'baby blue',
    'age': 25,
  };

  /*************************
  Functions
  *************************/
  /* Function Sytax
   * 
   * returnType functionName() {
   *  function body
   *  return value
   * }
   *  
  */

  // this function returns a string
  String getName() {
    return "Sandra";
  }

  String getNameValue = getName();
  print("The function getName() returns this: ${getNameValue}");

  // this function returns nothing
  void nothingFunction() {
    print("Hello world!");
  }

  nothingFunction();

  // parameters
  void addUser1(String firstName, int id) {
    print("first name: ${firstName}");
    print("ID: ${id}");
  }

  // parameters have to be passed into the function in order and they are required
  print('\n*** addUser1 ***');
  addUser1("Sandra", 123);
  addUser1("Cindy", 23);

  // named optional parameters
  void addUser2(String firstName, int id, {String lastName, int age = 20}) {
    print("first name: ${firstName}");
    print("ID: ${id}");
    print("Last name: ${lastName}");
    print("age: ${age}");
  }

  print('\n*** addUser2 ***');
  addUser2("sandra", 123, lastName: "laudando", age: 7);

  // positional optional parameters
  void addUser3(String firstName, int id, [String lastName, int age]) {
    print("first name: ${firstName}");
    print("ID: ${id}");
    print("Last name: ${lastName}");
    print("age: ${age}");
  }

  print('\n*** addUser3 ***');
  addUser3("sandra", 123, "laudando");

  // default parameters
  void addUser4(String firstName, int id,
      [String lastName = "none", int age = 0]) {
    print("first name: ${firstName}");
    print("ID: ${id}");
    print("Last name: ${lastName}");
    print("age: ${age}");
  }

  print('\n*** addUser4 ***');
  addUser4("sandra", 123, "laudando");
}

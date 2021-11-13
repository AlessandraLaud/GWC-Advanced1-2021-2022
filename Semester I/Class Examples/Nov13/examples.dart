main() {
  /*************** 
   Operators
  ***************/
  int add = 2 + 2;
  int subtract = 4 - 2;
  double divide = 10 / 4;
  int mod = 4 % 2;

  /*************** 
   Relational operators
  ***************/
  bool exp1 = 2 > 7;
  bool exp2 = 6 >= 7;
  bool exp3 = 6 != 2;

  print("exp1: ${exp1}");
  print("exp2: ${exp2}");
  print("exp3: ${exp3}");

  /*************** 
   Logical operators
  ***************/
  bool exp4 = (2 > 4) && (5 > 2);
  bool exp5 = (2 + 2) == (8 / 2);
  bool exp6 = (6 >= 3) || (7 < 10);
  bool exp7 = (6 > 5) || (7 <= 10) && (2 < 5) || (4 >= 10);

  print("exp4: ${exp4}");
  print("exp5: ${exp5}");
  print("exp6: ${exp6}");
  print("exp7: ${exp7}");

  /*************** 
   Control Flow
  ***************/
  bool isSunny = true;
  bool isRaining = false;

  if (isRaining) {
    print("Bring an umbrella 🌧 !!!");
  } else if (isSunny) {
    print("GO OUTSIDE!! 🌤");
  } else {
    print("DON'T GO ANYWHERE!");
  }

  if (isSunny) {
    // print("🌤");
  } else {
    // print("rain");
  }

  // if else short cut
  String todaysWeather = isSunny ? "🌤" : "rain";
  print("todaysWeather: ${todaysWeather}");

  /*************** 
   Loops
  ***************/

  // for loops
  print("\n**** For Loop counter ****");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
  print("**************");

  print("\n**** For Loop an array ****");
  List<String> animals = ['cat', 'dog', 'snake'];
  for (int i = 0; i < animals.length; i++) {
    print(animals[i]);
  }
  print("**************");

  print("\n**** Add numbers ****");
  List<int> addNumbers = [1, 2, 3, 4, 5];
  for (int i = 0; i < addNumbers.length; i++) {
    addNumbers[i] = addNumbers[i] + 1;
    // at i=0: addNumbers[0] = 1 + 1
    // at i=1: addNumbers[1] = 2 + 1
    // at i=2: addNumbers[2] = 3 + 1
  }
  print(addNumbers);
  print("**************");

  // for each
  print("\n**** Foods Array ****");
  List<String> foods = ['apple', 'blueberries'];
  foods.forEach((food) => print(food));
  foods.forEach((food) {
    // print(food);
    // multiple lnes
  });
  print("**************");

  // for-in
  print("\n**** Foods Array: For In ****");
  for (String myfood in foods) {
    print(myfood);
  }
  print("**************");

  // while
  print("\n**** While Loop ****");
  int score = 0;
  while (score < 4) {
    score++; // same thing: score = score + 1;
    print("score: ${score}");

    if (score == 4) {
      print("You won! Game over.");
    }
  }
  print("**************");

  // break and continue
  print("\n**** Break example ****");
  int counter = 0;
  while (counter < 5) {
    print(counter);
    counter++;
    if (counter == 2) {
      break; // stop the loop and break out
    }
  }
  print("**************");

  print("\n**** Continue example ****");
  counter = 0;
  while (counter < 5) {
    counter++;
    if (counter == 2) {
      continue; // continue and restart the loop, do not execute the rest of the code in th e loop after continue
    }
    print("hello ${counter}"); // hello will not be printed if counter == 2
  }
  print("**************");

  // map
  print("\n**** Continue example ****");
  List<String> dessert = ['cake', 'cannoli'];
  var newList = dessert.map((item) => item + 's');
  print("numbersList: ${newList}");
  print("**************");

  // switch case
  String weather = "rainy";
  switch (weather) {
    case 'sunny':
      print("wear sunscreen");
      break;
    case 'rainy':
      print("Bring an umbrella");
      break;
    case 'snowy':
      print("wear a puffy coat");
      break;
    default:
      print("weather is unknown");
  }
}

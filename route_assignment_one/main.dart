// ignore_for_file: unused_local_variable

import 'dart:io';
import 'dart:math' as math;

String? promptLetter;

void main() {
  do {
    chooseQuestion();
  } while (promptLetter == 'y' || promptLetter == 'Y');
}

void chooseQuestion() {
  print("Please enter the number of the question you want to see (1-10):");
  int questionNumber = int.parse(stdin.readLineSync()!);

  switch (questionNumber) {
    case 1:
      questionOne();
      break;
    case 2:
      questionTwo();
      break;
    case 3:
      questionThree();
      break;
    case 4:
      questionFour();
      break;
    case 5:
      questionFive();
      break;
    case 6:
      questionSix();
      break;
    case 7:
      questionSeven();
      break;
    case 8:
      questionEight();
      break;
    case 9:
      questionNine();
      break;
    case 10:
      questionTen();
    default:
      print("Please try again and enter a number from 1 to 10");
  }
}

void prompt() {
  print(
      "Do you wish to see another question?\nEnter Y to view another question\nEnter any other letter to exit");
  promptLetter = stdin.readLineSync()!;
}

void questionOne() {
  print("Please enter a number");
  int number = int.parse(stdin.readLineSync()!);

  number % 2 == 0 ? print("Yes") : print("No");
  prompt();
}

void questionTwo() {
  num num1, num2, num3, first, second, last;
  List<num> numbersList = [];

  print("Enter first number:");
  num1 = num.parse(stdin.readLineSync()!);

  print("Enter second number:");
  num2 = num.parse(stdin.readLineSync()!);

  print("Enter third number:");
  num3 = num.parse(stdin.readLineSync()!);

  // Old Answer:
  // numbersList.add(num1);
  // numbersList.add(num2);
  // numbersList.add(num3);

  // numbersList.sort();

  print(numbersList);

  void printSortedNumbers(num first, num mid, num last) {
    print('Numbers in ascending order: [$first, $mid, $last]');
    print('Numbers in descending order: [$last, $mid, $first]');
  }

  if (num1 > num2 && num1 > num3) {
    if (num2 > num3) {
      printSortedNumbers(num3, num2, num1);
    } else {
      printSortedNumbers(num2, num3, num1);
    }
  } else if (num2 > num1 && num2 > num3) {
    if (num1 > num3) {
      printSortedNumbers(num3, num1, num2);
    } else {
      printSortedNumbers(num1, num3, num2);
    }
  } else if (num3 > num1 && num3 > num2) {
    if (num1 > num2) {
      printSortedNumbers(num2, num1, num3);
    } else {
      printSortedNumbers(num1, num2, num3);
    }
  }

  prompt();
}

void questionThree() {
  print("Please enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 21) {
    print("Congrats! You are eligible to cast a vote");
  } else {
    print("You're not old enough to cast a vote");
  }
  prompt();
}

void questionFour() {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  print("Please enter an alphabet:");
  String alphabet = stdin.readLineSync()!;

  vowels.contains(alphabet)
      ? print("The alphabet is a vowel")
      : print("The alphabet is not a vowel");
  prompt();
}

void questionFive() {
  int num1, num2, num3;

  print("Enter first number:");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter third number:");
  num3 = int.parse(stdin.readLineSync()!);

  void printMaxMinNumbers(int max, int min) {
    print("Max: $max, Min:$min");
  }

  (num1 > num2 && num1 > num3)
      ? ((num2 < num3)
          ? printMaxMinNumbers(num1, num2)
          : printMaxMinNumbers(num1, num3))
      : (num2 > num1 && num2 > num3)
          ? ((num1 < num3)
              ? printMaxMinNumbers(num2, num1)
              : printMaxMinNumbers(num2, num3))
          : (num3 > num1 && num3 > num2 && num1 < num2)
              ? printMaxMinNumbers(num3, num1)
              : printMaxMinNumbers(num3, num2);
  prompt();
}

void questionSix() {
  int x = 3;
  int y = 2;
  int z = x++;
  // z = 3+1 = 4
  int w = ++y;
  // w = 1+2 = 3

  // Final answer
  // x=3, y=2, z=4, w=3
  print("Please check the code section for this question for the answer");
  prompt();
}

void questionSeven() {
  print("Please enter your name:");
  String name = stdin.readLineSync()!;

  print("Please enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  int remainingYearsTill100 = 100 - age;

  print(
      "Hello ${name}, you have $remainingYearsTill100 left to be 100 years old");
  prompt();
}

void questionEight() {
  print("Please enter your grade:");
  String currentGrade = stdin.readLineSync()!;

  switch (currentGrade) {
    case 'a' || 'A':
      print("Excellent");
      break;

    case 'b' || 'B':
      print("Outstanding");
      break;

    case 'c' || 'C':
      print("Good");
      break;

    case 'd' || 'D':
      print("Can Do Better");
      break;

    case 'f' || 'F':
      print("Failed");
      break;
    default:
      print("Please enter a valid grade [A, B, C, D, F]");
  }
  prompt();
}

void questionNine() {
  num radius, length, area, volume;

  print("Please enter the radius of the cylinder:");
  radius = num.parse(stdin.readLineSync()!);

  area = math.pow(radius, 2) * math.pi;

  print("Please enter the length of the cylinder:");
  length = num.parse(stdin.readLineSync()!);

  volume = area * length;

  print("The area is: $area\nThe volume is: $volume");

  prompt();
}

void questionTen() {
  print("Please enter a number:");
  num number = num.parse(stdin.readLineSync()!);

  number > 0
      ? print("Positive")
      : number < 0
          ? print("Negative")
          : print("Zero");

  prompt();
}

import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Rock, Paper, Scissors\nType 'exit' to stop the game");
  final random = Random();

  // Rules of the game
  var rules = {
    'rock': 'scissors',
    'scissors': 'paper',
    'paper': 'rock'
  };

  // Initial score
  var user = 0;
  var comp = 0;

  // Options for computer to choose
  var options = ['rock', 'paper', 'scissors'];

  // Actual game
  while (true) {
    var compChoice = options[random.nextInt(options.length)];
    stdout.write('\nPlease choose Rock, Paper or Scissors: ');
    var userChoice = stdin.readLineSync()?.toLowerCase();

    if (userChoice == 'exit') {
      print('\nYou: $user Computer: $comp\nBye Bye!');
      break;
    }

    if (!options.contains(userChoice)) {
      print('Incorrect choice');
      continue;
    } else if (compChoice == userChoice) {
      print('We have a tie!');
    } else if (rules[compChoice] == userChoice) {
      print('Computer wins: $compChoice vs $userChoice');
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print('You win: $userChoice vs $compChoice');
      user += 1;
    }
  }
}
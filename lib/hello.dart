import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  int i = 0;
  var isCorrect = false;

  print('             GUESS THE NUMBER ❤            ');
  print('──────────────────────────────────────────');

  do {
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();

    if (input == null) {
      continue;
    }

    var guess = int.tryParse(input);

    if (guess == null) {
      continue;
    }

    if (guess == answer) {
      i++;
      print('➜ $guess is CORRECT!, Total guesses $i ❤');
      isCorrect = true;
      print('───────────────── The End ──────────────');
    } else if (guess > answer) {
      print('➜ $guess is TOO HIGH ▲');
      isCorrect = false;
      i++;
    } else {
      print('➜ $guess is TOO LOW ▼');
      isCorrect = false;
      i++;
    }
  } while (!isCorrect);


}
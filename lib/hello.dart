import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  int i = 0;
  var isCorrect = false;
  int j = 0;
  var myList = <int>[];
  print('──────────────────────────────────────────');
  print('            GUESS THE NUMBER ❤           ');
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

    if (guess > answer) {
      print('➜ $guess is TOO HIGH ▲');
      isCorrect = false;
      i++;
    }
    else if(guess < answer) {
      print('➜ $guess is TOO LOW ▼');
      isCorrect = false;
      i++;
    }
    else if (guess == answer) {
      i++;
      print('➜ $guess is CORRECT!, Total guesses $i ❤');
      isCorrect = true;
      print('───────────────── The End ──────────────');
      myList.add(i);
      var ip;
      var check = false;

      do{
        stdout.write('Play again? (Y/N) : ');
        ip = stdin.readLineSync();
        if(ip==null){
          continue;
        }
        if(ip=='y'|| ip=='Y'|| ip=='n' || ip=='N' ){
          check = true;
        }
        else{
          check = false;
        }
      }while(!check);

      if (ip == 'y' || ip == 'Y') {
        i=0;
        isCorrect = false;
        print('──────────────────────────────────────────');
        print('            GUESS THE NUMBER ❤           ');
        print('──────────────────────────────────────────');
        continue;
      }
      else if (ip == 'n' || ip == 'N') {
        var len = myList.length;
        print('You are played $len games.');
        for (var i = 0; i < myList.length; i++) {
          var x = i + 1;
          var list = myList[i];
          print('🚀 Game #$x : $list guesses.');
        }
      }
    }
  } while (!isCorrect);


}
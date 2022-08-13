import 'dart:math';
class Game{
  int answer = 0; //field
  int  i = 0;
  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1; //1 - 100
    print('คำตอบ ตือ $answer');
  }
  int getguess(int number_guess){
    i += 1;
    if(number_guess > answer){
      print(' ║ $number_guess is TOO HIGH! ▲');
      return 0;
    }
    else if(number_guess < answer){
      print(' ║ $number_guess is TOO LOW ▼');
      return 0;
    }
    else{
      print(" ║ Congratulations ❤ total guesses: $i");
      //print("Want to continue playing? yes or no");
      return 3;
    }
  }
}
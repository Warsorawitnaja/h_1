import 'dart:io';
import 'game.dart';
void main(){

  int result = 0;
  var check = 0;
  var no = 1; // ปืดโปรแกรมทันที
  var game = Game();
  print('                              🎮                              ');
  print(" ╔════════════════════ GUESS T H E NUMBER ═══════════════════════╗ ");
  //print(" Please guess the number between 1 and 100 inclustive ");
  do{
    stdout.write(" ║ Please guess the number between 1 and 100 inclustive ➜ ");
    var input = stdin.readLineSync(); // readLineSync == อาจจะ retrue เป็น "null
    var guess = int.tryParse(input!);
    if(guess == null) {
      print(' ║ Plsease enter number only');
      continue;
    }
    result = game.getguess(guess);
  }
  while(result != 3);
  print(' ╚════════════════════════   THE ENG   ══════════════════════════╝ ');
  print("                            ʕ´• ᴥ•̥`ʔ                             ");
}
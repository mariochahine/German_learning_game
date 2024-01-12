import 'package:flutter/material.dart';
import 'dart:math';

List<Words> wd = [
  Words('Hallo', 'Hello'),
  Words('Bitte', 'Please'),
  Words('Danke', 'Thank You'),
  Words('Auf Wiedersehen', 'Goodbye'),
  Words('Leid', 'Sorry'),
  Words('Eins', 'One'),
  Words('Zwei', 'Two'),
  Words('Drei', 'Three'),
  Words('Vier', 'Four'),
  Words('Funf', 'Five'),
  Words('Montag', 'Monday'),
  Words('Dienstag', 'Tuesday'),
  Words('Mittwoch', 'Wednesday'),
  Words('Donnerstag', 'Thursday'),
  Words('Freitag', 'Friday'),
  Words('Rot', 'Red'),
  Words('Blau', 'Blue'),
  Words('Grun', 'Green'),
  Words('Gelb', 'Yellow'),
  Words('Schwarz', 'Black'),
  Words('Mutter', 'Mother'),
  Words('Vater', 'Father'),
  Words('Schwester', 'Sister'),
  Words('Bruder', 'Brother'),
  Words('Familie', 'Family'),
  Words('Apfel', 'Apple'),
  Words('Brot', 'Bread'),
  Words('Kase', 'Cheese'),
  Words('Ei', 'Egg'),
  Words('Suppe', 'Soup'),
  Words('Auto', 'Car'),
  Words('Bus', 'Bus'),
  Words('Zug', 'Train'),
  Words('Fahrrad', 'Bicycle'),
  Words('Flugzeug', 'Airplane'),
  Words('Uhr', 'Watch'),
  Words('Stunde', 'Hour'),
  Words('Tag', 'Day'),
  Words('Woche', 'Week'),
  Words('Arbeiten', 'Work'),
  Words('Lernen', 'Learn'),
  Words('Schule', 'School'),
  Words('Buro', 'Office'),
  Words('Hausaufgaben', 'Homework'),
  Words('Bestellung', 'Order'),
  Words('Rechnung', 'Bill'),
  Words('Trinkgeld', 'Tip'),
];

class Words {
  String german;
  String english;

  Words(this.german, this.english);

  String getgermanwd(){
    return '$german';
  }
  String getenglishwd(){
    return '$english';
  }
}

List<Phrases> ph = [
  Phrases('Ich verstehe nicht.', 'I dont understand.'),
  Phrases('Sprechen Sie Englisch?', 'Do you speak English?'),
  Phrases('Wo ist die Toilette?', 'Where is the bathroom?'),
  Phrases('Hilfe!', 'Help!'),
  Phrases('Mein Pass ist weg.', 'My passport is gone.'),
  Phrases('Rufen Sie einen Arzt an!', 'Call a doctor!'),
  Phrases('Ich habe mich verlaufen.', 'Im lost.'),
  Phrases('Wie heißen Sie?', 'Whats your name?'),
  Phrases('Es freut mich, Sie kennenzulernen.', 'Nice to meet you.'),
  Phrases('Frohe Weihnachten!', 'Merry Christmas!'),
  Phrases('Ich hätte eine Frage.', 'I have a question.'),
  Phrases('Könnten Sie mir bitte helfen?', 'Could you please help me?'),
  Phrases('Prost!', 'Cheers!'),
  Phrases('Guten Appetit!', 'Enjoy your meal!'),
  Phrases('Herzlichen Glückwunsch!', 'Congratulations!'),
  Phrases('Gute Besserung!', 'Get well soon!'),
];

class Phrases {
  String ger;
  String eng;

  Phrases(this.ger, this.eng);

  String getgerph(){
    return '$ger';
}
  String getengph(){
    return '$eng';
  }
}
Random rand = Random();

class getindex{
  int i = rand.nextInt(47);
  int geti(){
    return i;
  }
}

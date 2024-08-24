import 'dart:io';
void main() {
  // Function to get input from user
  String getInput(String prompt) {
    stdout.write('$prompt: ');
    return stdin.readLineSync() ?? '';
  }

  // Collect user information
  String name = getInput('Enter your name');
  String phoneNumber = getInput('Enter your phone number');
  String age = getInput('Enter your age');
  String height = getInput('Enter your height (e.g., 175 cm)');
  String weight = getInput('Enter your weight (e.g., 70 kg)');
  String address = getInput('Enter your address');
  
  // Collect hobbies
  List<String> hobbies = [];
  String hobby;
  while (true) {
    hobby = getInput('Enter a hobby (or type "done" to finish)');
    if (hobby.toLowerCase() == 'done') break;
    hobbies.add(hobby);
  }
  
  // Generate and display formatted biodata
  String formattedBiodata = '''
  ================================
           BIO-DATA
  ================================

  Name         : $name
  Phone Number : $phoneNumber
  Age          : $age
  Height       : $height
  Weight       : $weight
  Address      : $address

  Hobbies      : ${hobbies.isEmpty ? 'No hobbies listed' : hobbies.join(', ')}

  ================================
  ''';

  print(formattedBiodata);
}
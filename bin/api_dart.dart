import 'package:api_dart/model/Person.dart';
import 'package:api_dart/model/dog.dart';
import 'package:api_dart/service/apiServices.dart';

void main(List<String> arguments) async {
  print("DEBUT");
  /*List<String> mesMots = await getWords(number: 7);*/

  /*int age = await getAgeByName(name: "enzo");
  print(age);*/

  Person person = Person(name: 'toto', age: 99);
  print(await sendData(person: person));


  /*mesMots.forEach((element) => print("Mot = $element"));*/

  print("FIN");

}

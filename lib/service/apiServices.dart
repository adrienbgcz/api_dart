import 'package:api_dart/model/Person.dart';
import 'package:dio/dio.dart';
import '../model/dog.dart';
const String URL = "https://dog.ceo/api";

void getDogo() async {
  try {
    var response = await Dio().get('$URL/breeds/image/random');
    Dog dogoApi = Dog.fromJson(response.data); // récupérer un json en objet
    print(dogoApi.toJson()); // convertir un objet en json
  } catch (e) {
    print(e);
  }
}

void getDogoByName({required String name}) async {
  try {
    var response = await Dio().get('https://dog.ceo/api/breed/$name/images/random');
    print(response.data);
  } catch(e) {
    print(e);
  }
}

Future<String> getWord() async {
  try {
    var response = await Dio().get('https://random-word-api.herokuapp.com/word');
    return response.data[0];
  } catch(e) {
    print(e);
    return "ERROR";
  }
}

Future <List<String>> getWords({required int number, int len = 5}) async {
  try {
    var response = await Dio().get('https://random-word-api.herokuapp.com/word', queryParameters: {"number": number, "length": len});
    return List<String>.from(response.data);
  } catch(e) {
    print(e);
    return [];
  }
}

Future<int> getAgeByName({required String name}) async {
  try {
    var response = await Dio().get('https://api.agify.io', queryParameters: {"name": name});
    Person person = Person.fromJson(response.data);
    print(person.toJson());
    return person.age;
  } catch(e) {
    print(e);
    return 0;
  }
}


Future<String> sendData({required Person person}) async {
  try {
    var response = await Dio().post('https://reqres.in/api/users', data: person.toJson());
    print(response.data);
    return "OK";
  } catch(e) {
    return e.toString();
  }
}



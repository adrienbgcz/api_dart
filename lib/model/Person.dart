class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}
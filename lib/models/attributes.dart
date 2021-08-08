class Attributes {
  String photo;
  String name;
  int? height;
  int? weight;
  String? gender;
  String? skills;
  List<String>? model;
  List<String>? weaknesses;

  //Construtor
  Attributes({
    required this.photo,
    required this.name,
    this.height,
    this.weight,
    this.gender,
    this.skills,
    this.model,
    this.weaknesses,
  });
}

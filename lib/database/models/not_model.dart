
class Not{

  final String title;
  final String body;

  Not({required this.title,required this.body});
  factory Not.fromJson(Map<String, dynamic>json){
    return Not(
      title: json['title'],
      body: json['body']
    );
  }



  // Not.fromMap(Map < String ,dynamic>map){
  //   id = map['id'];
  //   body = map['body'];
  //   title = map['title'];
  // }

}


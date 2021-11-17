class Question{
  late String title;
  late String body;
  Question.fromMap(Map < String ,dynamic>map){
    this.body = map['body'];
    this.title = map['title'];
  }

}
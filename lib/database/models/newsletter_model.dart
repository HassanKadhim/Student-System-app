
class NewsLetter{
  late int id;
  late String title;
  late String body;
  NewsLetter.fromMap(Map < String ,dynamic>map){
    this.id = map['id'];
    this.body = map['body'];
    this.title = map['title'];
  }

}
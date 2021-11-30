class NewsLetter{
  late String title;
  late String body;
  NewsLetter.fromMap(Map < String ,dynamic>map){
    this.body = map['body'];
    this.title = map['title'];
  }

}
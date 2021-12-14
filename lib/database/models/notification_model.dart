



class NotificationModel {
  int id = 0;
  String title ='';
  String body ='';


  NotificationModel({id, title, body});

  NotificationModel.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;

    return data;
  }

}
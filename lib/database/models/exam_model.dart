

class ExamModel {
  int id = 0;
  String name ='';

  ExamModel({id, name});

  ExamModel.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    name = json['name'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }

}
class MyChannelModel {
  Data data;
  int statusCode;
  String msg;

  MyChannelModel({this.data, this.statusCode, this.msg});

  MyChannelModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    statusCode = json['statusCode'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['statusCode'] = this.statusCode;
    data['msg'] = this.msg;
    return data;
  }
}

class Data {
  List<Mylist> mylist;

  Data({this.mylist});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['mylist'] != null) {
      mylist = new List<Mylist>();
      json['mylist'].forEach((v) {
        mylist.add(new Mylist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mylist != null) {
      data['mylist'] = this.mylist.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Mylist {
  String name1;
  String name2;
  String imgurl;

  Mylist({this.name1, this.name2, this.imgurl});

  Mylist.fromJson(Map<String, dynamic> json) {
    name1 = json['name1'];
    name2 = json['name2'];
    imgurl = json['imgurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name1'] = this.name1;
    data['name2'] = this.name2;
    data['imgurl'] = this.imgurl;
    return data;
  }
}
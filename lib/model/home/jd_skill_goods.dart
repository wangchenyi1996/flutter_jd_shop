class JdSkillGoods {
  Data data;
  String msg;
  int statusCode;

  JdSkillGoods({this.data, this.msg, this.statusCode});

  JdSkillGoods.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    msg = json['msg'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['msg'] = this.msg;
    data['statusCode'] = this.statusCode;
    return data;
  }
}

class Data {
  String timeDec;
  String lastTime;
  List<SkillList> skillList;

  Data({this.timeDec, this.lastTime, this.skillList});

  Data.fromJson(Map<String, dynamic> json) {
    timeDec = json['timeDec'];
    lastTime = json['lastTime'];
    if (json['skillList'] != null) {
      skillList = new List<SkillList>();
      json['skillList'].forEach((v) {
        skillList.add(new SkillList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timeDec'] = this.timeDec;
    data['lastTime'] = this.lastTime;
    if (this.skillList != null) {
      data['skillList'] = this.skillList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SkillList {
  String id;
  String discountPrice;
  String oldPrice;
  String imgUrl;

  SkillList({this.id, this.discountPrice, this.oldPrice, this.imgUrl});

  SkillList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discountPrice = json['discountPrice'];
    oldPrice = json['oldPrice'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['discountPrice'] = this.discountPrice;
    data['oldPrice'] = this.oldPrice;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

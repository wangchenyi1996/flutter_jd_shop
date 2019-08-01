class SelectRecormendGoods {
  SelectData data;
  String msg;
  int statusCode;

  SelectRecormendGoods({this.data, this.msg, this.statusCode});

  SelectRecormendGoods.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new SelectData.fromJson(json['data']) : null;
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

class SelectData {
  List<SelectList> selectList;

  SelectData({this.selectList});

  SelectData.fromJson(Map<String, dynamic> json) {
    if (json['selectList'] != null) {
      selectList = new List<SelectList>();
      json['selectList'].forEach((v) {
        selectList.add(new SelectList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.selectList != null) {
      data['selectList'] = this.selectList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SelectList {
  List<String> imgArr;
  String firstImg;
  String describtion;
  String price;
  List<String> intro;

  SelectList(
      {this.imgArr, this.firstImg, this.describtion, this.price, this.intro});

  SelectList.fromJson(Map<String, dynamic> json) {
    imgArr = json['imgArr'].cast<String>();
    firstImg = json['firstImg'];
    describtion = json['describtion'];
    price = json['price'];
    intro = json['intro'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgArr'] = this.imgArr;
    data['firstImg'] = this.firstImg;
    data['describtion'] = this.describtion;
    data['price'] = this.price;
    data['intro'] = this.intro;
    return data;
  }
}
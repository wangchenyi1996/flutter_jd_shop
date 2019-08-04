class ADDJJXY {
  Data data;
  String msg;
  int statusCode;

  ADDJJXY({this.data, this.msg, this.statusCode});

  ADDJJXY.fromJson(Map<String, dynamic> json) {
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
  List<Category1> category1;
  List<Category2> category2;
  List<Category3> category3;

  Data({this.category1, this.category2, this.category3});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['category1'] != null) {
      category1 = new List<Category1>();
      json['category1'].forEach((v) {
        category1.add(new Category1.fromJson(v));
      });
    }
    if (json['category2'] != null) {
      category2 = new List<Category2>();
      json['category2'].forEach((v) {
        category2.add(new Category2.fromJson(v));
      });
    }
    if (json['category3'] != null) {
      category3 = new List<Category3>();
      json['category3'].forEach((v) {
        category3.add(new Category3.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.category1 != null) {
      data['category1'] = this.category1.map((v) => v.toJson()).toList();
    }
    if (this.category2 != null) {
      data['category2'] = this.category2.map((v) => v.toJson()).toList();
    }
    if (this.category3 != null) {
      data['category3'] = this.category3.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category1 {
  String cateName1;
  String cateIntro1;
  List<String> cateImg1;

  Category1({this.cateName1, this.cateIntro1, this.cateImg1});

  Category1.fromJson(Map<String, dynamic> json) {
    cateName1 = json['cateName1'];
    cateIntro1 = json['cateIntro1'];
    cateImg1 = json['cateImg1'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cateName1'] = this.cateName1;
    data['cateIntro1'] = this.cateIntro1;
    data['cateImg1'] = this.cateImg1;
    return data;
  }
}

class Category2 {
  String cateName2;
  String cateIntro2;
  List<String> cateImg2;

  Category2({this.cateName2, this.cateIntro2, this.cateImg2});

  Category2.fromJson(Map<String, dynamic> json) {
    cateName2 = json['cateName2'];
    cateIntro2 = json['cateIntro2'];
    cateImg2 = json['cateImg2'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cateName2'] = this.cateName2;
    data['cateIntro2'] = this.cateIntro2;
    data['cateImg2'] = this.cateImg2;
    return data;
  }
}

class Category3 {
  String cateName3;
  String cateIntro3;
  String cateImg3;

  Category3({this.cateName3, this.cateIntro3, this.cateImg3});

  Category3.fromJson(Map<String, dynamic> json) {
    cateName3 = json['cateName3'];
    cateIntro3 = json['cateIntro3'];
    cateImg3 = json['cateImg3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cateName3'] = this.cateName3;
    data['cateIntro3'] = this.cateIntro3;
    data['cateImg3'] = this.cateImg3;
    return data;
  }
}
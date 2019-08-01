class TopNavList {
  Data data;
  String msg;
  int statusCode;

  TopNavList({this.data, this.msg, this.statusCode});

  TopNavList.fromJson(Map<String, dynamic> json) {
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
  List<NavList> navList;

  Data({this.navList});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['navList'] != null) {
      navList = new List<NavList>();
      json['navList'].forEach((v) {
        navList.add(new NavList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.navList != null) {
      data['navList'] = this.navList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NavList {
  String id;
  String icons;
  String navText;

  NavList({this.id, this.icons, this.navText});

  NavList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icons = json['icons'];
    navText = json['navText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icons'] = this.icons;
    data['navText'] = this.navText;
    return data;
  }
}
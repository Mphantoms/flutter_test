class HomeData {
  int status;
  Data data;
  String msg;
  int timestamps;

  HomeData({this.status, this.data, this.msg, this.timestamps});

  HomeData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    msg = json['msg'];
    timestamps = json['timestamps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['msg'] = this.msg;
    data['timestamps'] = this.timestamps;
    return data;
  }
}

class Data {
  int total;
  int size;
  int pages;
  int current;
  List<Records> records;

  Data({this.total, this.size, this.pages, this.current, this.records});

  Data.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    size = json['size'];
    pages = json['pages'];
    current = json['current'];
    if (json['records'] != null) {
      records = new List<Records>();
      json['records'].forEach((v) {
        records.add(new Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['size'] = this.size;
    data['pages'] = this.pages;
    data['current'] = this.current;
    if (this.records != null) {
      data['records'] = this.records.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Records {
  int id;
  String cover;
  String name;
  String desc;
  String icon;
  String logo;
  String userName;
  int createTime;
  int level;
  Null tags;
  int userId;
  int displayOrder;
  int check;
  String reason;
  Null showCount;
  Null sendCount;
  Null updateTime;
  bool status;
  Null mainImage;
  String copyrightType;
  String copyrightContent;
  String microProgramCode;

  Records(
      {this.id,
      this.cover,
      this.name,
      this.desc,
      this.icon,
      this.logo,
      this.userName,
      this.createTime,
      this.level,
      this.tags,
      this.userId,
      this.displayOrder,
      this.check,
      this.reason,
      this.showCount,
      this.sendCount,
      this.updateTime,
      this.status,
      this.mainImage,
      this.copyrightType,
      this.copyrightContent,
      this.microProgramCode});

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cover = json['cover'];
    name = json['name'];
    desc = json['desc'];
    icon = json['icon'];
    logo = json['logo'];
    userName = json['userName'];
    createTime = json['createTime'];
    level = json['level'];
    tags = json['tags'];
    userId = json['userId'];
    displayOrder = json['displayOrder'];
    check = json['check'];
    reason = json['reason'];
    showCount = json['showCount'];
    sendCount = json['sendCount'];
    updateTime = json['updateTime'];
    status = json['status'];
    mainImage = json['mainImage'];
    copyrightType = json['copyrightType'];
    copyrightContent = json['copyrightContent'];
    microProgramCode = json['microProgramCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['icon'] = this.icon;
    data['logo'] = this.logo;
    data['userName'] = this.userName;
    data['createTime'] = this.createTime;
    data['level'] = this.level;
    data['tags'] = this.tags;
    data['userId'] = this.userId;
    data['displayOrder'] = this.displayOrder;
    data['check'] = this.check;
    data['reason'] = this.reason;
    data['showCount'] = this.showCount;
    data['sendCount'] = this.sendCount;
    data['updateTime'] = this.updateTime;
    data['status'] = this.status;
    data['mainImage'] = this.mainImage;
    data['copyrightType'] = this.copyrightType;
    data['copyrightContent'] = this.copyrightContent;
    data['microProgramCode'] = this.microProgramCode;
    return data;
  }
}
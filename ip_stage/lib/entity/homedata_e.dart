class HomeDataE {
  String title;
  int number;
  HomeDataE({this.title, this.number});

  HomeDataE.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['number'] = this.number;
    return data;
  }
}
class HomeDataDit {
  String num1;
  String num2;
  String image;
  HomeDataDit({this.num1, this.num2,this.image});

  HomeDataDit.fromJson(Map<String, dynamic> json) {
    num1 = json['num1'];
    num2 = json['num2'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num1'] = this.num1;
    data['num2'] = this.num2;
    data['image'] = this.image;
    return data;
  }
}
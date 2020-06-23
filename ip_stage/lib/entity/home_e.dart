class HomeE {
  String title;
  String cover;
  String image;
  String name;

  HomeE({this.title, this.cover, this.image, this.name});

  HomeE.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cover = json['cover'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['image'] = this.image;
    data['name'] = this.name;
    return data;
  }
}
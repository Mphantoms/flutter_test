class HomeE {
  String title;
  String cover;
  String image;
  String name;
  int id;
  HomeE({this.title, this.cover, this.image, this.name,this.id});

  HomeE.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cover = json['cover'];
    image = json['image'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['image'] = this.image;
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}
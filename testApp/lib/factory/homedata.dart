class HomeData {
  String _title,_src;
  int _number;
  HomeData(this._title,this._src,this._number);

  factory HomeData.fromJSON(Map<String,dynamic> json){
    if(json==null){
      return null;
    }else{
      return HomeData(json['title'],json['src'],json['number']);
    }
  }
  get title => this._title;
  get src => this._src;
  get number => this._number;
}
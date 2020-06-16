class DetailData {
  String _title,_src,_smallTitle,_botTitle;
  DetailData(this._title,this._src,this._smallTitle,this._botTitle);

  factory DetailData.fromJSON(Map<String,dynamic> json){
    if(json==null){
      return null;
    }else{
      return DetailData(json['title'],json['src'],json['smallTitle'],json['botTitle']);
    }
  }
  get title => this._title;
  get src => this._src;
  get smallTitle => this._smallTitle;
  get botTitle => this._botTitle;
}
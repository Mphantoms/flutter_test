import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ip_stage/pages/picdetail.dart';

class PicList extends StatefulWidget {
  PicList({Key key}) : super(key: key);

  @override
  _PicListState createState() => _PicListState();
}

class _PicListState extends State<PicList> {
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750, height: 1334);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '表情详情',
          style: TextStyle(
            color: Color.fromRGBO(56, 56, 56, 1),
            fontSize: ScreenUtil().setSp(36),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Color.fromRGBO(244, 245, 247, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().setWidth(32.0)),
          child: Column(
            children: [
              MainCard(),
              MainCard(),
              MainCard(),
              MainCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  List<String> cardList = [
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1822818508,4122059670&fm=11&gp=0.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3551088150,1234227623&fm=26&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593411064305&di=54e26e68b9082539cd427b0dc4ce9b4c&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2018-1%2F15173642131723005.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593411064307&di=3b5cea225ba7980b118ef8cd16bb3a58&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201512%2F05%2F20151205160547_nmGWY.jpeg'
  ];
  
  @override
  Widget build(BuildContext context) {
    _gotoPicDetail(int id){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PicDetail(id: id)));
    }
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)),
      height: ScreenUtil().setWidth(426.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(16.0))),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: ScreenUtil().setWidth(114),
                height: ScreenUtil().setWidth(114),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(8.0)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593410410401&di=56a1a58b014fee50a9b97505e13200b8&imgtype=0&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D2032940249%2C2406628899%26fm%3D214%26gp%3D0.jpg'))),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(16.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '樱花少女卖家系列',
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: ScreenUtil().setSp(28.0)),
                  ),
                  SizedBox(
                    height: ScreenUtil().setWidth(6.0),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(506.0),
                    child: Text(
                      '我们是来自霓虹的可爱女孩，喜欢卖萌发呆装可爱，矮油，其实人家是真可爱！',
                      style: TextStyle(
                          color: Color.fromRGBO(153, 153, 153, 1),
                          fontSize: ScreenUtil().setSp(24.0)),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                0, ScreenUtil().setWidth(24.0), 0, ScreenUtil().setWidth(40.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: cardList
                  .map((e) => ListCard(
                        image: e,
                      ))
                  .toList(),
            ),
          ),
          GestureDetector(
            onTap: (){
              _gotoPicDetail(10);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '更多',
                  style: TextStyle(
                      color: Color.fromRGBO(153, 153, 153, 1),
                      fontSize: ScreenUtil().setSp(24.0),
                      fontWeight: FontWeight.w400),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  final String image;
  const ListCard({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(150.0),
      height: ScreenUtil().setWidth(150.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(16.0)),
          border: Border.all(
              width: ScreenUtil().setWidth(2.0),
              color: Color.fromRGBO(225, 225, 225, 1)),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
    );
  }
}

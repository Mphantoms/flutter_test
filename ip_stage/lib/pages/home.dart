import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ip_stage/entity/home_e.dart';
import 'package:ip_stage/pages/detail.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<HomeE> opsList = [
    HomeE(
      id: 1,
      title: '楼外空',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916119719&di=0d35b3db9a40017cc6e190dd3ef457a5&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201805%2F26%2F20180526142647_iyjzv.jpg',
      name: '能爷',
    ),
    HomeE(
      id: 2,
      title: '清风话语',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916155587&di=06099c3fe7beb5513833a4065b82d57e&imgtype=0&src=http%3A%2F%2Fimg.qqzhi.com%2Fuploads%2F2018-12-10%2F164023273.jpg',
      name: '奥力给',
    ),
    HomeE(
      id: 3,
      title: '午后浓茶',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1778185297,551630143&fm=26&gp=0.jpg',
      name: '苍梧',
    ),
    HomeE(
      id: 4,
      title: '这个世界',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1051735577,1860913879&fm=11&gp=0.jpg',
      name: '北非猫',
    )
  ];
  ScrollController _scrollController = ScrollController();
  Future<void> _refresh(){
    print(00);
  }
  @override
  void initState() {
    _scrollController.addListener(() {
          // 如果滑动到底部
          if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
                _refresh();
          }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750, height: 1334);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '扭蛋星',
            style: TextStyle(
              color: Color.fromRGBO(56, 56, 56, 1),
              fontSize: ScreenUtil().setSp(36),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),

        body: RefreshIndicator(
            onRefresh: _refresh,
            child: Container(
            color: Color.fromRGBO(244, 245, 247, 1),
            child: ListView(
              controller: _scrollController,
              children: [
                Container(
                    margin: EdgeInsets.all(ScreenUtil().setSp(32)),
                    height: ScreenUtil().setWidth(384),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0), //阴影xy轴偏移量
                          blurRadius: 10.0, //阴影模糊程度
                          spreadRadius: 1.0 //阴影扩散程度
                          )
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().setSp(8.0))),
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return new Image.network(
                            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592818881032&di=4b5390fd52f720d0833cfe5e73ab00a4&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F8a39a67e913a384822a7b1b5de97c5cc414c310d.jpg",
                            fit: BoxFit.fill,
                          );
                        },
                        itemCount: 1,
                        pagination: new SwiperPagination(),
                      ),
                    )),
                Container(
                  height: ScreenUtil().setHeight(66),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '查看往期活动',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: ScreenUtil().setSp(24)),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(8.0),
                            ScreenUtil().setWidth(10.0), 0, 0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: ScreenUtil().setSp(12.0),
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(ScreenUtil().setSp(28)),
                  child: Column(
                    children: [
                      Text(
                        'IP作品',
                        style: TextStyle(
                          color: Color.fromRGBO(56, 56, 56, 1),
                          fontSize: ScreenUtil().setSp(40.0),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(40),
                      ),
                      Container(
                        color: Colors.white,
                        height:
                            (((MediaQuery.of(context).size.width) * 10 / 11 / 2) +
                                    ScreenUtil().setHeight(40)) *
                                (opsList.length ~/ 2),
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          childAspectRatio: 10 / 11,
                          mainAxisSpacing: ScreenUtil().setSp(32),
                          crossAxisSpacing: ScreenUtil().setSp(32),
                          children: opsList
                              .map((e) => HomeCard(
                                    id:e.id,
                                    image: e.image,
                                    name: e.name,
                                    cover: e.cover,
                                    title: e.title,
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class HomeCard extends StatelessWidget {
  final String image;
  final String name;
  final String title;
  final String cover;
  final int id;
  const HomeCard({Key key, this.image, this.name, this.title, this.cover, this.id})
      : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    _gotoDetail(int id){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(id: id)));
    }
    return GestureDetector(
      onTap: (){
        _gotoDetail(id);
      },
        child: Container(
        color: Colors.white,
        child: ClipRRect(
          borderRadius:
              BorderRadius.all(Radius.circular(ScreenUtil().setSp(16.0))),
          child: Container(
            decoration: BoxDecoration(
              border:
                  Border.all(width: 1.0, color: Color.fromRGBO(240, 240, 240, 1)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height:
                      ((MediaQuery.of(context).size.width) * 10 / 11 / 2) * 0.73,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        image),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setSp(16.0),
                      ScreenUtil().setSp(16.0),
                      ScreenUtil().setSp(16.0),
                      ScreenUtil().setSp(8.0)),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: ScreenUtil().setSp(28)),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: ScreenUtil().setWidth(16.0)),
                    Container(
                      width: ScreenUtil().setSp(32.0),
                      height: ScreenUtil().setSp(32.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                            Radius.circular(ScreenUtil().setSp(36.0))),
                        child: Image(
                            image: NetworkImage(
                                cover)),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(8.0),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: ScreenUtil().setSp(22)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

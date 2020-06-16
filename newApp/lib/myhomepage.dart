import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;
import 'package:newApp/entity/homedata.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List imgUrlList = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591952350882&di=e4f085398064d979964b4adc36c196dc&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-01-25%2F5a69373f3d8e6.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591952350881&di=242f07b7cf553a49ff6a0977dcc018e6&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D4250059667%2C2843962822%26fm%3D193",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591952350878&di=0560cf955d8a99a790a322cae1d2e53a&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D1218333579%2C1554960230%26fm%3D193"
  ];
  final urlStr = 'https://api.x-planet.cn/ip/opus/list?page=1';
  int _currentIndex = 1;
  Future<List<Records>> getHomeDataFromHttp() async {
    var response = await http.get(urlStr);
    if(response.statusCode == 200){
      var nowData = jsonDecode(response.body);
      List<dynamic> records = nowData['data']['records'];
      List<Records> rec = records.map((e) => Records.fromJson(e)).toList();
      return rec;
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: new Text(
                  '首页',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                ),
                title: new Text(
                  '商业',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.mood,
                ),
                title: new Text(
                  '我的',
                )),
          ],
          currentIndex: _currentIndex,
          onTap: (int i) {
            setState(() {
              _currentIndex = i;
            });
          },
          backgroundColor: Colors.white,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            '小宇宙',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(36), color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                Container(
                  height: ScreenUtil().setHeight(500),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(32.0)),
                  child: Column(
                    children: [
                      Container(
                        height: ScreenUtil().setHeight(384),
                        child: Swiper(
                          itemCount: imgUrlList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(
                              imgUrlList[index],
                              fit: BoxFit.fill,
                            );
                          },
                          pagination: SwiperPagination(),
                          autoplay: true,
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(34),
                      ),
                      Center(
                        child: Text(
                          '查看往期活动',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: ScreenUtil().setSp(24)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              ScreenUtil().setHeight(32),
                              0,
                              ScreenUtil().setHeight(48)),
                          child: Center(
                            child: Text(
                              'IP作品',
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(40)),
                            ),
                          ),
                        ),
                        FutureBuilder(
                            future: getHomeDataFromHttp(),
                            builder: (context, data) {
                              if(data.hasData){
                                var lastData = data.data;
                                print(lastData.length ~/ 2);
                                return Container(
                                  height: ScreenUtil().setHeight((lastData.length ~/ 2) * 314.0),
                                  child: GridView.count(
                                    primary: false,
                                    crossAxisCount: 2,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: ScreenUtil().setWidth(28.0)),
                                    mainAxisSpacing: ScreenUtil().setWidth(32.0),
                                    crossAxisSpacing: ScreenUtil().setWidth(32.0),
                                    childAspectRatio: 1.0,
                                    children: lastData.map<Widget>((e){
                                      return contain(e.cover,e.name,e.logo,e.userName);
                                    }).toList(),
                                  ),
                                );
                              }else{
                                return Center();
                              }
                            }),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

  Widget contain(cover,name,logo,userName) {
    return Container(
      height: ScreenUtil().setHeight(314.0),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(ScreenUtil().setHeight(16))),
        border: Border.all(
            color: Color.fromRGBO(240, 240, 240, 1),
            width: ScreenUtil().setSp(2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: ScreenUtil().setHeight(180),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(ScreenUtil().setHeight(16)),
                    topRight: Radius.circular(ScreenUtil().setHeight(16))),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      cover),
                ),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(16.0),
                ScreenUtil().setWidth(16.0),
                ScreenUtil().setWidth(16.0),
                ScreenUtil().setWidth(8.0)),
            child: Text(
              "$name",
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontSize: ScreenUtil().setSp(28)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(16)),
                width: ScreenUtil().setWidth(32),
                height: ScreenUtil().setWidth(32),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setWidth(32))),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        logo),
                  ),
                ),
              ),
              Text(
                '$userName',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(22),
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(51, 51, 51, 1),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

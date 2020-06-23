import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Museum extends StatefulWidget {
  Museum({Key key}) : super(key: key);

  @override
  _MuseumState createState() => _MuseumState();
}

class _MuseumState extends State<Museum> {
  Color _white = Colors.white;
  clearStorage() async {
    print('我被点击了');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString('token'));
    prefs.remove('token');
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750, height: 1334);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '博物馆',
            style: TextStyle(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(36),
            ),
          ),
          backgroundColor: Color.fromRGBO(0, 107, 255, 1),
          elevation: 0,
        ),
        body: Container(
          color: Color.fromRGBO(0, 107, 255, 1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: ScreenUtil().setHeight(358.0),
                  
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image:
                              AssetImage('assets/images/museum/header.png'))),
                  child: Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(38.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '欢迎来到',
                          style: TextStyle(
                              color: _white, fontSize: ScreenUtil().setSp(48)),
                        ),
                        Text('宇宙博物馆',
                            style: TextStyle(
                                color: _white,
                                fontSize: ScreenUtil().setSp(48))),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              ScreenUtil().setHeight(10.0),
                              0,
                              ScreenUtil().setHeight(40.0)),
                          child: Text('搜罗平台成功案例',
                              style: TextStyle(
                                  color: _white,
                                  fontSize: ScreenUtil().setSp(28))),
                        ),
                        GestureDetector(
                          onTap: () {
                            clearStorage();
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.help_outline,
                                color: _white,
                                size: 16,
                              ),
                              SizedBox(width: ScreenUtil().setWidth(4.0)),
                              Text('上榜规则',
                                  style: TextStyle(
                                      color: _white,
                                      fontSize: ScreenUtil().setSp(24))),
                            ],
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(52.0)),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(32.0),
                      ScreenUtil().setHeight(16.0),
                      ScreenUtil().setWidth(32.0),
                      0),
                  child: Column(
                    children: [
                      MuseumComp(title: '听弦断，断那三千痴缠。坠花湮，湮没一朝风涟。花若怜，落在谁的指尖',image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916537493&di=9a0d5d188e0012e2c615feb8558ddb35&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F6%2F58734aaa292f2.jpg',),
                      MuseumComp(title: '长街长,烟花繁,你挑灯回看, 短亭短,红尘辗,我把萧再叹',image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916537492&di=ecede7a74e507287d3fba6c4a8c3ae03&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F3%2F59b2567f33320.jpg',)
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class MuseumComp extends StatelessWidget {
  final String title;
  final String image;

  const MuseumComp({Key key, this.title, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(54.0)),
      child: ClipRRect(
        borderRadius:
            BorderRadius.all(Radius.circular(ScreenUtil().setSp(16.0))),
        child: Container(
          height: ScreenUtil().setWidth(480.0),
          color: Colors.white,
          padding: EdgeInsets.all(ScreenUtil().setSp(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setWidth(340),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(16.0))),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            image))),
              ),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(10.0)),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(30.0),
                      color: Color.fromRGBO(51, 51, 51, 1)),
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

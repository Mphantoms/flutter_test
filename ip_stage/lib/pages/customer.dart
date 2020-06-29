import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ip_stage/entity/home_e.dart';
import 'package:ip_stage/pages/detail.dart';
import 'package:ip_stage/pages/edit.dart';
import 'package:ip_stage/pages/homedata.dart';
import 'package:ip_stage/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Customer extends StatefulWidget {
  Customer({Key key}) : super(key: key);

  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  bool isLogin = false;
  bool isShow = false;
  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    if (prefs.getString('token') != "") {
      if(prefs.getString('token') != null){
        setState(() {
          isLogin = true;
        });
      }else{
        setState(() {
          isLogin = false;
        });
      }
    }else{
      setState(() {
        isLogin = false;
      });
    }
    setState(() {
      isShow = true;
    });
  }

  @override
  void initState() {
    getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750, height: 1334);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '我的',
            style: TextStyle(
              color: Color.fromRGBO(56, 56, 56, 1),
              fontSize: ScreenUtil().setSp(36),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: isShow ? (isLogin ? YesLogin() : Nologin()): Container()
      );
  }
}

class YesLogin extends StatefulWidget {
  YesLogin({Key key}) : super(key: key);

  @override
  _YesLoginState createState() => _YesLoginState();
}

class _YesLoginState extends State<YesLogin> {
  Color _white = Colors.white;
  int navNum = 1;
  setNavNum(int num) {
    setState(() {
      navNum = num;
    });
  }
  _gotoEdit(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit()));
  }
  List<HomeE> opsList = [
    HomeE(
      title: '楼外空',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916119719&di=0d35b3db9a40017cc6e190dd3ef457a5&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201805%2F26%2F20180526142647_iyjzv.jpg',
      name: '能爷',
    ),
    HomeE(
      title: '清风话语',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916155587&di=06099c3fe7beb5513833a4065b82d57e&imgtype=0&src=http%3A%2F%2Fimg.qqzhi.com%2Fuploads%2F2018-12-10%2F164023273.jpg',
      name: '奥力给',
    ),
    HomeE(
      title: '午后浓茶',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1778185297,551630143&fm=26&gp=0.jpg',
      name: '苍梧',
    ),
    HomeE(
      title: '这个世界',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916048388&di=ed6d17f02ee81214dc67897164c4d7ae&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202152332_Txtru.png',
      image:
          'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1051735577,1860913879&fm=11&gp=0.jpg',
      name: '北非猫',
    ),
    HomeE(
      title: '泪子难',
      cover:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592916454178&di=5afc1f044167eb6be92e75f7d7cfaeca&imgtype=0&src=http%3A%2F%2Fimg.name2012.com%2Fuploads%2Fallimg%2F180330%2F19431B1C-6.jpg',
      image:
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2576922231,3335962451&fm=26&gp=0.jpg',
      name: '季风化',
    )
  ];
  @override
  Widget build(BuildContext context) {
    _gotoHomeData(int id){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(id: id)));
    }
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(216.0),
              color: _white,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        ScreenUtil().setHeight(32.0),
                        ScreenUtil().setHeight(48.0),
                        ScreenUtil().setHeight(16.0),
                        0),
                    width: ScreenUtil().setWidth(120.0),
                    height: ScreenUtil().setWidth(120.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(120.0)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592905985728&di=f92dbdfe8e40db6255fba4fc8c777269&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201803%2F29%2F20180329215423_BVdNA.thumb.700_0.jpeg'))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(80.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '天天艺术',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: ScreenUtil().setSp(36)),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.check_circle_outline,
                                size: 20, color: Colors.blueAccent),
                            Text(
                              '上海似颜绘科技有限公司',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontSize: ScreenUtil().setSp(28)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(70.0),
                  ),
                  GestureDetector(
                    onTap: (){
                      _gotoEdit();
                    },
                      child: Container(
                      margin: EdgeInsets.only(top: ScreenUtil().setHeight(86.0)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.edit,
                            size: 24,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(18.0),
                          ),
                          Text(
                            '编辑资料',
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1),
                                fontSize: ScreenUtil().setSp(22)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(24.0),
            ),
            Container(
              color: _white,
              child: Column(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(100.0),
                    child: Row(
                      children: [
                        navNum == 1
                            ? Expanded(
                                child: Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(32.0)),
                                child: Column(
                                  children: [
                                    Text(
                                      '我的收藏',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: ScreenUtil().setSp(32)),
                                    ),
                                    SizedBox(
                                      height: ScreenUtil().setHeight(10.0),
                                    ),
                                    Container(
                                      width: ScreenUtil().setWidth(48.0),
                                      height: ScreenUtil().setHeight(4.0),
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ))
                            : Expanded(
                                child: Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(36.0)),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      child: Text(
                                        '我的收藏',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                153, 153, 153, 1),
                                            fontSize: ScreenUtil().setSp(28.0),
                                            fontWeight: FontWeight.w400),
                                      ),
                                      onTap: () {
                                        setNavNum(1);
                                      },
                                    ),
                                  ],
                                ),
                              )),
                        navNum == 2
                            ? Expanded(
                                child: Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(32.0)),
                                child: Column(
                                  children: [
                                    Text(
                                      '我的特权',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: ScreenUtil().setSp(32)),
                                    ),
                                    SizedBox(
                                      height: ScreenUtil().setHeight(10.0),
                                    ),
                                    Container(
                                      width: ScreenUtil().setWidth(48.0),
                                      height: ScreenUtil().setHeight(4.0),
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ))
                            : Expanded(
                                child: Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(36.0)),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      child: Text(
                                        '我的特权',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                153, 153, 153, 1),
                                            fontSize: ScreenUtil().setSp(28.0),
                                            fontWeight: FontWeight.w400),
                                      ),
                                      onTap: () {
                                        setNavNum(2);
                                      },
                                    ),
                                  ],
                                ),
                              ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            navNum == 1
                ? Container(
                    padding: EdgeInsets.all(ScreenUtil().setSp(28)),
                    color: Colors.white,
                    child: Container(
                      height:
                          (((MediaQuery.of(context).size.width) * 10 / 11 / 2) +
                                  ScreenUtil().setHeight(40)) *
                              ((opsList.length / 2).ceil()),
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        childAspectRatio: 10 / 11,
                        mainAxisSpacing: ScreenUtil().setSp(32),
                        crossAxisSpacing: ScreenUtil().setSp(32),
                        children: opsList.asMap().keys
                            .map((e) => GestureDetector(
                              onTap: (){
                                _gotoHomeData(e);
                              },
                              child: HomeCard(
                                    image: opsList[e].image,
                                    name: opsList[e].name,
                                    cover: opsList[e].cover,
                                    title: opsList[e].title,
                                  ),
                            ))
                            .toList(),
                      ),
                    ),
                  )
                : Container(
                    child: Column(
                      children: [
                        CusCard(),
                        CusCard()
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class CusCard extends StatelessWidget {
  const CusCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(14.0)),
      width: ScreenUtil().setWidth(686),
      height: ScreenUtil().setWidth(250),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/customer/spc_bg.png'))),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(48.0),
                ScreenUtil().setHeight(60.0), ScreenUtil().setHeight(16.0), 0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'IP合作抵用券',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(32.0)),
                  ),
                  Text(
                    '有效期至：2019.12.31',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(28.0),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(32.0),
                  ),
                  Text(
                    '注意事项说明注意事项说明注意事项说明',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(22.0),
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: ScreenUtil().setHeight(160),
            height: ScreenUtil().setHeight(160),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/customer/spc_btn.png'))),
          )
        ],
      ),
    );
  }
}

class Nologin extends StatelessWidget {
  const Nologin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goLogin() {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => MyHomePage()),
          (route) => route == null);
    }

    return Container(
      child: Container(
          color: Color.fromRGBO(244, 245, 247, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: ScreenUtil().setWidth(272),
                  width: ScreenUtil().setWidth(272),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/images/customer/login_logo.png'))),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, ScreenUtil().setHeight(32.0), 0,
                    ScreenUtil().setHeight(64.0)),
                child: Text(
                  '暂未登录验证身份',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: ScreenUtil().setSp(32),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  goLogin();
                },
                child: Container(
                  width: ScreenUtil().setWidth(360),
                  height: ScreenUtil().setHeight(96),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 107, 255, 1),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setSp(16.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 3.0), //阴影xy轴偏移量
                            blurRadius: 3.0, //阴影模糊程度
                            spreadRadius: 1.0 //阴影扩散程度
                            )
                      ]),
                  child: Center(
                    child: Text(
                      '去登录',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(36)),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String image;
  final String name;
  final String title;
  final String cover;

  const HomeCard({Key key, this.image, this.name, this.title, this.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

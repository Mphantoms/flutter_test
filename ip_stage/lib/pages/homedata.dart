import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:ip_stage/components/barchart.dart';
import 'package:ip_stage/components/piechart.dart';
import 'package:ip_stage/entity/homedata_e.dart';

class HomeData extends StatefulWidget {
  final int id;
  HomeData({Key key, this.id}) : super(key: key);

  @override
  _HomeDataState createState() => _HomeDataState();
}

class _HomeDataState extends State<HomeData> {
  List<HomeDataE> addressData = [
    HomeDataE(title: '广东省', number: 200),
    HomeDataE(title: '江苏省', number: 180),
    HomeDataE(title: '安徽省', number: 150),
    HomeDataE(title: '浙江省', number: 120),
    HomeDataE(title: '湖北省', number: 100),
    HomeDataE(title: '北京市', number: 70),
    HomeDataE(title: '上海市', number: 60),
    HomeDataE(title: '福建省', number: 40),
  ];
  List<HomeDataDit> ditData = [
    HomeDataDit(num1: '556万',num2: '570万',image: 'assets/images/homedata/taobao.png'),
    HomeDataDit(num1: '446.5万',num2: '447万',image: 'assets/images/homedata/dingding.png'),
    HomeDataDit(num1: '336万',num2: '338.5万',image: 'assets/images/homedata/momo.png'),
    HomeDataDit(num1: '220万',num2: '220.8万',image: 'assets/images/homedata/other.png'),
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750, height: 1334);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '樱花少女相关数据',
          style: TextStyle(
            color: Color.fromRGBO(56, 56, 56, 1),
            fontSize: ScreenUtil().setSp(36),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setWidth(342),
              color: Colors.white,
              child: Column(
                children: [
                  HomeDataTitle(
                    icon: Icons.assessment,
                    title: '总览数据',
                    topInstans: 32.0,
                    time: '刚刚',
                  ),
                  SizedBox(
                    height: ScreenUtil().setWidth(48.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '555.6W',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(64.0),
                                color: Color.fromRGBO(47, 103, 250, 1)),
                          ),
                          SizedBox(
                            height: ScreenUtil().setWidth(12.0),
                          ),
                          Text('表情累计展示量',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(28.0),
                                  color: Color.fromRGBO(51, 51, 51, 1)))
                        ],
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(120.0),
                      ),
                      Column(
                        children: [
                          Text(
                            '555.6W',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(64.0),
                                color: Color.fromRGBO(47, 103, 250, 1)),
                          ),
                          SizedBox(
                            height: ScreenUtil().setWidth(12.0),
                          ),
                          Text('表情累计发送量',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(28.0),
                                  color: Color.fromRGBO(51, 51, 51, 1)))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setWidth(24.0),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  HomeDataTitle(
                    title: '粉丝相关数据',
                    icon: Icons.pets,
                    topInstans: 44,
                    time: '2019.07.02',
                  ),
                  SizedBox(
                    height: ScreenUtil().setWidth(32.0),
                  ),
                  Center(
                      child: Text(
                    '粉丝画像-性别分布',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(28)),
                  )),
                  Container(
                      height: ScreenUtil().setWidth(280.0), child: PieChart1()),
                  Padding(
                    padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(80.0),
                        right: ScreenUtil().setWidth(80.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(24.0),
                              height: ScreenUtil().setWidth(24.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(98, 178, 238, 1),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(24.0))),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(4.0),
                            ),
                            Text(
                              '男性 (70%)',
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: ScreenUtil().setSp(24.0),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(24.0),
                              height: ScreenUtil().setWidth(24.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(248, 149, 136, 1),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(24.0))),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(4.0),
                            ),
                            Text(
                              '女性 (20%)',
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: ScreenUtil().setSp(24.0),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(24.0),
                              height: ScreenUtil().setWidth(24.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(248, 203, 127, 1),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(24.0))),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(4.0),
                            ),
                            Text(
                              '未知 (10%)',
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: ScreenUtil().setSp(24.0),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: ScreenUtil().setWidth(96.0)),
                    child: Center(
                        child: Text(
                      '粉丝画像-年龄分布',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(28)),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setWidth(20),
                        bottom: ScreenUtil().setWidth(96.0)),
                    height: ScreenUtil().setHeight(300),
                    padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(32.0),
                        right: ScreenUtil().setWidth(32.0)),
                    child: BarChart(),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: ScreenUtil().setWidth(48.0)),
                    child: Center(
                        child: Text(
                      '粉丝画像-机型分布',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(28)),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(120.0),
                        right: ScreenUtil().setWidth(120.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(120.0),
                              height: ScreenUtil().setWidth(120.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(98, 178, 238, 1),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(120.0))),
                              child: Center(
                                child: Text(
                                  '55%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(36.0),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setWidth(16.0),
                            ),
                            Text(
                              'IOS',
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: ScreenUtil().setSp(24.0),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(120.0),
                              height: ScreenUtil().setWidth(120.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(56, 218, 188, 1),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(120.0))),
                              child: Center(
                                child: Text(
                                  '32%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(36.0),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setWidth(16.0),
                            ),
                            Text(
                              'Android',
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: ScreenUtil().setSp(24.0),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(120.0),
                              height: ScreenUtil().setWidth(120.0),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(248, 149, 136, 1),
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(120.0))),
                              child: Center(
                                child: Text(
                                  '13%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(36.0),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setWidth(16.0),
                            ),
                            Text(
                              '其他',
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: ScreenUtil().setSp(24.0),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setWidth(96.0),
                        bottom: ScreenUtil().setWidth(48.0)),
                    child: Center(
                        child: Text(
                      '粉丝画像-地区分布',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(28)),
                    )),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: ScreenUtil().setWidth(64.0)),
                    child: Column(
                      children: addressData
                          .asMap()
                          .keys
                          .map((e) => AddressSplit(
                                number: addressData[e].number,
                                title: addressData[e].title,
                                nindex: e,
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setWidth(32.0),
            ),
            Container(
              padding: EdgeInsets.only(bottom: ScreenUtil().setWidth(48.0)),
              color: Colors.white,
              child: Column(
                children: [
                  HomeDataTitle(
                    title: '主要渠道情况',
                    icon: Icons.group_work,
                    topInstans: 48,
                    time: '2019.07.04',
                  ),
                  Column(
                    children: ditData.map((e) => HomeDataCard(
                      num1: e.num1,
                      num2: e.num2,
                      image: e.image,
                    )).toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Title组件
class HomeDataTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  final double topInstans;
  final String time;
  const HomeDataTitle(
      {Key key, this.icon, this.title, this.topInstans, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(32.0),
          ScreenUtil().setWidth(topInstans),
          ScreenUtil().setWidth(32.0),
          ScreenUtil().setWidth(24.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.blueAccent,
                size: 24,
              ),
              SizedBox(
                width: ScreenUtil().setWidth(12.0),
              ),
              Text(
                title,
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: ScreenUtil().setSp(32)),
              ),
            ],
          ),
          Text(
            '更新时间：$time',
            style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
                fontSize: ScreenUtil().setSp(26.0),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

//地区分布
class AddressSplit extends StatelessWidget {
  final String title;
  final int number;
  final int nindex;
  const AddressSplit({Key key, this.title, this.number, this.nindex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var totalWidth = ScreenUtil().setWidth(480.0);
    Color nowColor = Color.fromRGBO(98, 178, 238, 1);
    if (nindex > 3 && nindex < 6) {
      nowColor = Color.fromRGBO(56, 218, 188, 1);
    } else if (nindex >= 6) {
      nowColor = Color.fromRGBO(248, 149, 136, 1);
    }
    return Container(
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(48.0),
          right: ScreenUtil().setWidth(48.0),
          bottom: ScreenUtil().setWidth(32.0)),
      child: Row(
        children: [
          Text('$title'),
          SizedBox(
            width: ScreenUtil().setWidth(16.0),
          ),
          Container(
            width: totalWidth * (number / 200),
            height: ScreenUtil().setWidth(46.0),
            color: nowColor,
          )
        ],
      ),
    );
  }
}

class HomeDataCard extends StatelessWidget {
  final String num1;
  final String num2;
  final String image;

  const HomeDataCard({Key key, this.num1, this.num2, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0),right: ScreenUtil().setWidth(32.0),bottom: ScreenUtil().setWidth(32.0)),
      width: double.infinity,
      padding: EdgeInsets.only(top: ScreenUtil().setWidth(110.0)),
      height: ScreenUtil().setWidth(316),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(image))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$num1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(64.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setWidth(18.0),
              ),
              Text(
                '表情累计展示量',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(28.0),
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(width: ScreenUtil().setWidth(72),),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$num2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(64.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setWidth(18.0),
              ),
              Text(
                '表情累计展示量',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(28.0),
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

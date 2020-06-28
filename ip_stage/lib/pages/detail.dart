import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:ip_stage/pages/homedata.dart';

class Detail extends StatefulWidget {
  final int id;

  const Detail({Key key, this.id}) : super(key: key);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int navNum = 1;
  setNavNum(int num) {
    setState(() {
      navNum = num;
    });
  }

  List<String> labels = ['少女', '三姐妹', '日系萌妹'];
  List<String> imagesLists = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761365&di=9602abac8e23b228ef14529ed7ab7c00&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201512%2F27%2F20151227182717_4d82y.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761363&di=ca8b5ebcb6cfb033e166cc3401c5ba2f&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fmobile%2F2019-07-16%2F5d2d8de393762.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761362&di=37b4d26ba6fdf1ef60327a234166d552&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20181007%2F17%2F1538903687-OYRWzVfpUh.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761361&di=6ce21502af2f3553825ac5201c4d91ff&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180803%2F22%2F1533305615-jTdUQhtILX.jpeg',
  ];
  List<String> imageslists2 = [
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3223144248,1028243605&fm=26&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761365&di=0d4356e614f71e04c29eab5541216e21&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201508%2F11%2F20150811172803_uTrkH.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761366&di=188ff3533ead05e83c01b4600dd91c3e&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2018-5%2F2018050914015850039.jpg',
    'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=21843156,1670630237&fm=26&gp=0.jpg'
  ];
  List<String> imageslists3 = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761360&di=a3b4e314247eec8be2a57fd4e92c1994&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2018-2%2F2018021214341765244.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761360&di=576d4c67d3ca3fd7b7545a079592c7f8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F15%2F20160415134919_sNLRt.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989761359&di=d4d4ec32b33335c8d9704aa72f09a01a&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2017%2F09%2F1523084620770.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592993640150&di=7bfcbb1137324a22213ccf739c290f5f&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201803%2F08%2F20180308221643_wGfSL.thumb.700_0.jpeg'
  ];
  List<String> imageslists4 = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592993640150&di=beccad42690dc95d4cafd20addc9fcf6&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201708%2F05%2F20170805075233_sLRxJ.jpeg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1657980391,3395597176&fm=26&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592993640149&di=7c08f48fe089542062af70d9da5a9c0e&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180111%2F10%2F1515637373-FUSawRpZTk.jpg',
    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1617923469,2075918442&fm=11&gp=0.jpg'
  ];
  List<String> imageslists5 = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592993640148&di=993a2fa98d424588cecc5f2bd0b6bc59&imgtype=0&src=http%3A%2F%2Fwww.flybridal.com%2Fhuangse%2FaHR0cDovL2ltZzMuZHVpdGFuZy5jb20vdXBsb2Fkcy9pdGVtLzIwMTUwOC8xMy8yMDE1MDgxMzA5NTk0NF9jUmVFZC5qcGVn.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3981247358,3962694843&fm=26&gp=0.jpg',
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3654848890,2422432410&fm=26&gp=0.jpg',
    'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2626056607,488448595&fm=26&gp=0.jpg'
  ];
  List<String> imageslists6 = [
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2373393816,75630204&fm=11&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592996122166&di=12bb52ab30ed21daf7f6aa76f4540b1c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201509%2F29%2F20150929081644_BXxht.jpeg',
    'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3471072454,1011250337&fm=26&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592996122166&di=72fd3dfd8722376abddbe7de38a19dfd&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201804%2F21%2F20180421192012_hcnug.thumb.700_0.jpg'
  ];
  _gotoHomeData(int id){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeData(id: id)));
  }
  @override
  Widget build(BuildContext context) {
    // int _id = widget.id;
    Color _white = Colors.white;
    ScreenUtil.init(width: 750, height: 1334);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '樱花少女',
            style: TextStyle(
              color: Color.fromRGBO(56, 56, 56, 1),
              fontSize: ScreenUtil().setSp(36),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                  color: Color.fromRGBO(244, 245, 247, 1),
                  padding:
                      EdgeInsets.only(bottom: ScreenUtil().setWidth(120.0)),
                  child: Column(
                    children: [
                      Container(
                        color: _white,
                        child: Container(
                          margin: EdgeInsets.all(ScreenUtil().setWidth(32.0)),
                          height: ScreenUtil().setWidth(384),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setSp(16.0)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2383115840,2548617749&fm=26&gp=0.jpg'))),
                        ),
                      ),
                      Container(
                        color: _white,
                        height: ScreenUtil().setWidth(114),
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(32.0)),
                        child: Row(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(96),
                              height: ScreenUtil().setWidth(96),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setSp(8.0)),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592976636163&di=a0754400f141c128e4cd6f3e6b791005&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201506%2F15%2F20150615005637_c34XP.jpeg'))),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(16.0),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '樱花少女',
                                      style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: ScreenUtil().setSp(32),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(16.0),
                                    ),
                                    Container(
                                      width: ScreenUtil().setWidth(88),
                                      height: ScreenUtil().setWidth(32),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(253, 199, 24, 1),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                                ScreenUtil().setWidth(16.0)),
                                            bottomLeft: Radius.circular(
                                                ScreenUtil().setWidth(16.0)),
                                          )),
                                      child: Center(
                                        child: Text(
                                          '优秀作品',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(51, 51, 51, 1),
                                            fontSize: ScreenUtil().setSp(16),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(14.0),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: ScreenUtil().setWidth(40.0),
                                      height: ScreenUtil().setWidth(40.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              ScreenUtil().setWidth(40.0)),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1855342404,1970996347&fm=26&gp=0.jpg'))),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(8.0),
                                    ),
                                    Text(
                                      '上海似颜绘科技有限公司',
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          fontSize: ScreenUtil().setSp(24),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(16.0),
                      ),
                      Container(
                        color: _white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: ScreenUtil().setHeight(146.0),
                              child: Row(
                                children: [
                                  navNum == 1
                                      ? Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              ScreenUtil().setHeight(32.0),
                                              ScreenUtil().setHeight(48.0),
                                              ScreenUtil().setHeight(64.0),
                                              0),
                                          child: Column(
                                            children: [
                                              Text(
                                                '主页',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize:
                                                        ScreenUtil().setSp(36)),
                                              ),
                                              SizedBox(
                                                height: ScreenUtil()
                                                    .setHeight(10.0),
                                              ),
                                              Container(
                                                width:
                                                    ScreenUtil().setWidth(48.0),
                                                height:
                                                    ScreenUtil().setHeight(4.0),
                                                color: Colors.black,
                                              )
                                            ],
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              ScreenUtil().setHeight(32.0),
                                              ScreenUtil().setHeight(52.0),
                                              ScreenUtil().setHeight(64.0),
                                              0),
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                child: Text(
                                                  '主页',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          153, 153, 153, 1),
                                                      fontSize: ScreenUtil()
                                                          .setSp(28.0),
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                onTap: () {
                                                  setNavNum(1);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                  navNum == 2
                                      ? Padding(
                                          padding: EdgeInsets.only(
                                              top:
                                                  ScreenUtil().setHeight(48.0)),
                                          child: Column(
                                            children: [
                                              Text(
                                                '动态',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize:
                                                        ScreenUtil().setSp(36)),
                                              ),
                                              SizedBox(
                                                height: ScreenUtil()
                                                    .setHeight(10.0),
                                              ),
                                              Container(
                                                width:
                                                    ScreenUtil().setWidth(48.0),
                                                height:
                                                    ScreenUtil().setHeight(4.0),
                                                color: Colors.black,
                                              )
                                            ],
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.only(
                                              top:
                                                  ScreenUtil().setHeight(52.0)),
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                child: Text(
                                                  '动态',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          153, 153, 153, 1),
                                                      fontSize: ScreenUtil()
                                                          .setSp(28.0),
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                onTap: () {
                                                  setNavNum(2);
                                                },
                                              ),
                                            ],
                                          ),
                                        )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(52.0),
                                  bottom: ScreenUtil().setHeight(80.0)),
                              height: ScreenUtil().setHeight(180),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: NetworkImage(
                                          'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3129962795,2464174702&fm=26&gp=0.jpg'))),
                            ),
                            DetailTitle(
                              title: 'IP介绍',
                              icon: Icons.description,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ScreenUtil().setWidth(32.0)),
                              child: Text(
                                '我们是来自霓虹的可爱女孩，喜欢卖萌发呆装可爱，矮油，其实人家是真可爱啦，才不是装的呢',
                                style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontSize: ScreenUtil().setSp(28),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  ScreenUtil().setWidth(32.0),
                                  ScreenUtil().setHeight(24.0),
                                  ScreenUtil().setWidth(32.0),
                                  ScreenUtil().setHeight(78.0)),
                              child: Row(
                                children: labels
                                    .asMap()
                                    .keys
                                    .map((e) => DtLabel(
                                          title: labels[e],
                                          lindex: e,
                                        ))
                                    .toList(),
                              ),
                            ),
                            DetailTitle(
                              title: '主要形象',
                              icon: Icons.android,
                              isShowTime: false,
                              isShowLoadMore: false,
                              id: 1
                            ),
                            KeyImage(
                              image:
                                  'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3129962795,2464174702&fm=26&gp=0.jpg',
                            ),
                            DetailTitle(
                              title: 'IP系列',
                              icon: Icons.sentiment_satisfied,
                              isShowTime: false,
                              isShowLoadMore: false,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom: ScreenUtil().setWidth(64.0)),
                              child: Column(
                                children: [
                                  IPConnect(
                                    title: '樱花少女女生节篇',
                                    imgList: imageslists2,
                                  ),
                                  IPConnect(
                                    title: '樱花少女买家篇',
                                    imgList: imageslists3,
                                  ),
                                  IPConnect(
                                    title: '樱花少女卖家篇',
                                    imgList: imageslists4,
                                  ),
                                  IPConnect(
                                    title: '樱花少女夏日篇',
                                    imgList: imageslists5,
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setWidth(16.0),
                                  ),
                                  Text(
                                    '查看所有表情包',
                                    style: TextStyle(
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                      fontSize: ScreenUtil().setSp(28.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            DetailTitle(
                              title: 'IP表现力',
                              icon: Icons.sentiment_satisfied,
                              isShowTime: true,
                              isShowLoadMore: true,
                              fn: _gotoHomeData,
                              id: 1
                            ),
                            IPExpressive(),
                            DetailTitle(
                              title: '数字衍生品',
                              icon: Icons.rss_feed,
                              isShowTime: false,
                              isShowLoadMore: false,
                              id: 1,
                            ),
                            NumberDerivatives(
                              images: imagesLists,
                            ),
                            DetailTitle(
                              title: '实体衍生品',
                              icon: Icons.shopping_basket,
                              isShowTime: false,
                              isShowLoadMore: false,
                              id: 1
                            ),
                            EntityDerivatives(
                              images: imageslists6,
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: ScreenUtil().setWidth(120.0),
                  decoration: BoxDecoration(
                      color: _white,
                      border: Border(
                          top: BorderSide(
                              width: 2.0,
                              color: Color.fromRGBO(227, 227, 227, 1)))),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(32.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.share,color: Colors.black,),
                                  onPressed: null
                                ),
                                IconButton(
                                  icon: Icon(Icons.favorite,color: Colors.red,),
                                  onPressed: null
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: ScreenUtil().setWidth(176.0),
                          height: ScreenUtil().setWidth(64.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(47,103,250,1),
                            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(8.0))
                          ),
                          child: Center(
                            child: Text(
                              '立即获得',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(28.0),
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}

//title组件
class DetailTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isShowTime;
  final bool isShowLoadMore;
  final Function fn;
  final int id;
  const DetailTitle(
      {Key key, this.icon, this.title, this.isShowTime, this.isShowLoadMore,this.fn,this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(32.0), 0,
          ScreenUtil().setWidth(32.0), ScreenUtil().setWidth(24.0)),
      child: Row(
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
              isShowTime == true
                  ? Padding(
                      padding:
                          EdgeInsets.only(left: ScreenUtil().setWidth(8.0)),
                      child: Text(
                        '更新时间：刚刚',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: ScreenUtil().setSp(26.0),
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  : Container()
            ],
          ),
          isShowLoadMore == true
              ? GestureDetector(
                onTap: (){
                  fn(id);
                },
                    child: Row(
                    children: [
                      Text(
                        '更多',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: ScreenUtil().setSp(24.0),
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 12, color: Color.fromRGBO(153, 153, 153, 1)),
                    ],
                  ),
              )
              : Container(),
        ],
      ),
    );
  }
}

//label组件
class DtLabel extends StatelessWidget {
  final String title;
  final int lindex;

  const DtLabel({Key key, this.title, this.lindex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16.0)),
      margin: EdgeInsets.only(right: ScreenUtil().setWidth(8.0)),
      height: ScreenUtil().setWidth(48.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(32.0)),
        color: lindex % 2 == 0
            ? Color.fromRGBO(255, 160, 216, 1)
            : Color.fromRGBO(154, 137, 249, 1),
      ),
      child: Center(
        child: Text(
          '#$title#',
          style: TextStyle(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(22),
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

//主要形象
class KeyImage extends StatelessWidget {
  final String image;
  const KeyImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(64.0)),
      width: double.infinity,
      height: ScreenUtil().setWidth(306.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        // itemExtent: ScreenUtil().setWidth(306.0),
        children: [
          Container(
            margin: EdgeInsets.only(right: ScreenUtil().setWidth(18.0)),
            child: Column(
              children: [
                Container(
                  height: ScreenUtil().setWidth(256.0),
                  width: ScreenUtil().setWidth(192.0),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setWidth(16.0)),
                      border: Border.all(
                          width: 2.0, color: Color.fromRGBO(225, 225, 225, 1))),
                  child: Image(
                      width: ScreenUtil().setWidth(172.0),
                      height: ScreenUtil().setWidth(172.0),
                      image: NetworkImage(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592989739458&di=dc90dee75bb7d1a4c09f0f5083758c8e&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-12%2F15128782489577955.jpg')),
                ),
                SizedBox(
                  height: ScreenUtil().setWidth(14.0),
                ),
                Center(
                  child: Text(
                    '小雪(KOYUKI)',
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: ScreenUtil().setSp(24.0)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//IP系列表情包
class IPConnect extends StatelessWidget {
  final String title;
  final List<String> imgList;
  const IPConnect({Key key, this.title,this.imgList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(32.0)),
      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black, fontSize: ScreenUtil().setSp(28.0)),
              ),
              Row(
                children: [
                  Text(
                    '更多',
                    style: TextStyle(
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontSize: ScreenUtil().setSp(24.0),
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.arrow_forward_ios,
                      size: 12, color: Color.fromRGBO(153, 153, 153, 1)),
                ],
              )
            ],
          ),
          SizedBox(height: ScreenUtil().setWidth(16.0)),
          Container(
              height: ScreenUtil().setWidth(164),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: imgList.map((e) => Container(
                    height: ScreenUtil().setWidth(164.0),
                    width: ScreenUtil().setWidth(164.0),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(16.0)),
                        border: Border.all(
                            width: 2.0,
                            color: Color.fromRGBO(225, 225, 225, 1)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                e))),
                  ),).toList(),
              ))
        ],
      ),
    );
  }
}

//IP表现力
class IPExpressive extends StatelessWidget {
  const IPExpressive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(32.0)),
      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(64.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ScreenUtil().setWidth(336),
            height: ScreenUtil().setWidth(202),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/detail/detail_one.png'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '555.6万',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(48.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setWidth(12.0),
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
          ),
          Container(
            width: ScreenUtil().setWidth(336),
            height: ScreenUtil().setWidth(202),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/detail/detail_two.png'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '565万',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(48.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setWidth(12.0),
                ),
                Text(
                  '表情累计发送量',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(28.0),
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//数字衍生品
class NumberDerivatives extends StatelessWidget {
  final List<String> images;
  const NumberDerivatives({Key key, this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(64.0)),
      width: double.infinity,
      height: ScreenUtil().setWidth(374.0),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: images
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(right: ScreenUtil().setWidth(18.0)),
                  child: Column(
                    children: [
                      Container(
                        height: ScreenUtil().setWidth(374.0),
                        width: ScreenUtil().setWidth(210.0),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(16.0)),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: NetworkImage(e))),
                      ),
                    ],
                  ),
                ),
              )
              .toList()),
    );
  }
}

//实体衍生品
class EntityDerivatives extends StatelessWidget {
  final List<String> images;
  const EntityDerivatives({Key key, this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(64.0)),
      width: double.infinity,
      height: ScreenUtil().setWidth(166.0),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: images
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(right: ScreenUtil().setWidth(24.0)),
                  child: Column(
                    children: [
                      Container(
                        height: ScreenUtil().setWidth(166.0),
                        width: ScreenUtil().setWidth(250.0),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(16.0)),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: NetworkImage(e))),
                      ),
                    ],
                  ),
                ),
              )
              .toList()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PicDetail extends StatefulWidget {
  final int id;
  PicDetail({Key key, this.id}) : super(key: key);

  @override
  _PicDetailState createState() => _PicDetailState();
}

class _PicDetailState extends State<PicDetail> {
  @override
  List<String> imgList = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319858&di=4e623e32112c1336805b7403c11f7bcb&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201503%2F08%2F20150308114327_5ctYr.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319858&di=c9d137ac941beb2fe8b24d521e1f89ce&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201602%2F15%2F20160215125431_SFk8n.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319857&di=5c149715765cfffcfd98b0278f809196&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20180715%2F4659d4cd8998491a8ed1914319ef449c.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319857&di=c96dfd40c61a472d095bf67d94def197&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201704%2F07%2F20170407171059_it3PY.thumb.700_0.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319856&di=f1a536e70aee956c3e1dbe84152c776b&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201806%2F18%2F20180618135559_cuexn.thumb.700_0.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319856&di=ef5e35277c2d24a38deef4d35045427d&imgtype=0&src=http%3A%2F%2Fwww.mangowed.com%2Fuploads%2F150120%2F1-150120210439193.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319855&di=12cff4a45a3fddd26f98a5bc5e376c80&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201509%2F20%2F20150920004250_MvKZa.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319855&di=f68e5f519b3ae3a600aa6592ce7a0e59&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201607%2F11%2F20160711185605_SCWJj.jpeg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3359293600,3044585005&fm=26&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593407319854&di=8799e260c8af7b4982108e6f7d89fc0b&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2018-1%2F15153757348171019.jpg',

  ];
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setWidth(422),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(16.0)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1275286539,2840512078&fm=26&gp=0.jpg'))),
                margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(28.0)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(32.0), 0, 0,
                    ScreenUtil().setWidth(20.0)),
                child: Text(
                  '樱花少女女生节系列',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: ScreenUtil().setSp(36.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(32.0), 0,
                    ScreenUtil().setWidth(32.0), ScreenUtil().setWidth(28.0)),
                child: Text(
                  '我们是来自霓虹的可爱女孩，喜欢卖萌发呆装可爱，矮油，其实人家是真可爱啦，才不是装的呢',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontSize: ScreenUtil().setSp(28.0),
                      fontWeight: FontWeight.w400),
                ),
              ),
              Divider(
                  indent: 0,
                  height: ScreenUtil().setWidth(2.0),
                  color: Colors.black12),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(64.0)),
                child: Center(
                  child: Text(
                    '长按表情可预览',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(28.0),
                        color: Color.fromRGBO(102, 102, 102, 1)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(32.0)),
                height: ScreenUtil().setWidth(540.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: ScreenUtil().setWidth(10.0),
                  mainAxisSpacing: ScreenUtil().setWidth(16.0),
                  children: imgList.map((e) => PicCard(image: e,)).toList(),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class PicCard extends StatelessWidget {
  final String image;
  const PicCard({Key key,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setWidth(164.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(16.0)),
          border: Border.all(
              width: ScreenUtil().setWidth(2.0),
              color: Color.fromRGBO(225, 225, 225, 1)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  image))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';
class MyWebView extends StatefulWidget {
  final int id;
  MyWebView({Key key,this.id}) : super(key: key);

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750,height: 1334);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '活动详情',
          style: TextStyle(
            color: Color.fromRGBO(56, 56, 56, 1),
            fontSize: ScreenUtil().setSp(36),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: WebView(
        initialUrl: "https://author.x-planet.cn/webview/museum.html?param=${widget.id}",
        //JS执行模式 是否允许JS执行
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
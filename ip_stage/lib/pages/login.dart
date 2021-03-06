import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ip_stage/bottomNav.dart';
import 'package:toast/toast.dart';
import '../Animations/FadeAnimation.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RegExp reg = RegExp(r'[0-9a-zA-Z]{1,15}[@][0-9a-zA-Z]{1,5}[.][a-z]{1,3}');
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  String _email = '';
  String _password = '';
  bool _isloading = false;
  setToken () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token","7ua6ds9ds690xxs");
  }
  void change(String type,String text){
    if(type == 'email'){
      setState(() {
        _email = text;
      });
    }else if(type == 'password'){
      setState(() {
        _password = text;
      });
    }
  }
  
  void _onTapToHome() {
    if(_emailEditingController.text==""){
      Toast.show('邮件未输入！',context, duration: Toast.LENGTH_LONG,gravity:  Toast.BOTTOM);
      return;
    }
    print(reg.hasMatch(_emailEditingController.text));
    if(!reg.hasMatch(_emailEditingController.text)){
      Toast.show('邮件格式错误！',context, duration: Toast.LENGTH_LONG,gravity:  Toast.BOTTOM);
      return;
    }
    if(_passwordEditingController.text==""){
      Toast.show('密码未输入！',context, duration: Toast.LENGTH_LONG,gravity:  Toast.BOTTOM);
      return;
    }
    setState(() {
      _isloading = true;
    });
    setToken();
    Future.delayed(Duration(seconds: 2),()=> {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context)=>BottomNav()),
            (route)=>route == null)
    });
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 750,height: 1334);
    return Scaffold(
        backgroundColor: Colors.white,
        body: LoadingOverlay(
          isLoading: _isloading,
          child: SingleChildScrollView(
            child: Container(
              child: Column(children: <Widget>[
                Container(
                  height: ScreenUtil().setHeight(500.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/login/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: ScreenUtil().setWidth(50.0),
                        width: ScreenUtil().setWidth(160.0),
                        height: ScreenUtil().setWidth(300.0),
                        child: FadeAnimation(
                            1,
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                              image: AssetImage('assets/images/login/light-1.png'),
                            )))),
                      ),
                      Positioned(
                        left: ScreenUtil().setWidth(240.0),
                        width: ScreenUtil().setWidth(120.0),
                        height: ScreenUtil().setWidth(220.0),
                        child: FadeAnimation(
                            1.2,
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                              image: AssetImage('assets/images/login/light-2.png'),
                            )))),
                      ),
                      Positioned(
                        right: ScreenUtil().setWidth(60.0),
                        top: ScreenUtil().setWidth(100.0),
                        width: ScreenUtil().setWidth(120.0),
                        height: ScreenUtil().setWidth(120.0),
                        child: FadeAnimation(
                            1.4,
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                              image: AssetImage('assets/images/login/clock.png'),
                            )))),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.4,
                            Container(
                              margin: EdgeInsets.only(top: ScreenUtil().setWidth(120.0)),
                              child: Center(
                                child: Text(
                                  '你好，请登录',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:  ScreenUtil().setSp(64.0),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(48.0)),
                  child: Column(children: <Widget>[
                    FadeAnimation(
                        1.6,
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, .2),
                                    blurRadius: ScreenUtil().setWidth(24.0),
                                    offset: Offset(0, 10))
                              ],
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[100]))),
                              child: TextField(
                                controller: _emailEditingController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '请输入邮箱',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                                onChanged: (String text){
                                  change('email',text);
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[100]))),
                              child: TextField(
                                controller: _passwordEditingController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '请输入密码',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                                onChanged: (String text){
                                  change('password',text);
                                },
                              ),
                            )
                          ]),
                        )),
                    SizedBox(
                      height: ScreenUtil().setWidth(64.0),
                    ),
                    FadeAnimation(
                        1.8,
                        GestureDetector(
                          onTap: () {
                            _onTapToHome();
                          },
                          child: Container(
                            height: ScreenUtil().setWidth(90.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ]),
                            ),
                            child: Center(
                              child: Text(
                                '登录',
                                style:
                                    TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(32.0)),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: ScreenUtil().setSp(120.0),
                    ),
                    FadeAnimation(
                        2.0,
                        Text('忘记密码？',
                            style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, 1),
                                fontSize: ScreenUtil().setSp(32.0))))
                  ]),
                ),
              ]),
            ),
          ),
        ));
  }
}

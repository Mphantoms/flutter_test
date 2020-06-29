import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
class Edit extends StatefulWidget {
  Edit({Key key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      print(pickedFile.path);
      _image = File(pickedFile.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '编辑信息',
          style: TextStyle(
            color: Color.fromRGBO(56, 56, 56, 1),
            fontSize: ScreenUtil().setSp(36),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: double.infinity,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: ScreenUtil().setWidth(276.0),
              height: ScreenUtil().setWidth(276.0),
              child: Stack(
                children: [
                  Container(
                    width: ScreenUtil().setWidth(276.0),
                    height: ScreenUtil().setWidth(276.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ScreenUtil().setWidth(276.0)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2806828867,37432892&fm=26&gp=0.jpg'
                        )
                      )
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: GestureDetector(
                        onTap: (){
                          getImage();
                        },
                        child: Container(
                        width: ScreenUtil().setWidth(60.0),
                        height: ScreenUtil().setWidth(60.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(60.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent,
                              blurRadius: 5.0,
                            ),
                          ]
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: ScreenUtil().setWidth(24.0),bottom: ScreenUtil().setWidth(48.0)),
              child: Text(
                '编辑头像',
                style: TextStyle(
                  color: Color.fromRGBO(51,51,51,1),
                  fontSize: ScreenUtil().setWidth(28.0)
                )
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(546.0),
              height: ScreenUtil().setWidth(96),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(48.0)),
                border: Border.all(width: ScreenUtil().setWidth(2.0),color: Color.fromRGBO(204,204,204,1))
              ),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: '请输入品牌名称',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(153,153,153,1),
                    fontSize: ScreenUtil().setSp(32.0),
                    fontWeight: FontWeight.w400
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setWidth(96.0),),
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                width: ScreenUtil().setWidth(360.0),
                height: ScreenUtil().setWidth(96.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0,107,255,1),
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(16.0))
                ),
                child: Center(
                  child: Text(
                    '保存设置',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(32.0)
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
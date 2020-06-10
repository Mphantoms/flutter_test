import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:testApp/factory/detaildata.dart';

class Detail extends StatefulWidget {
  Detail({Key key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int _id;
  Future<List<DetailData>> getDetailDateFromJson(BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/jsons/detail.json');
    List<dynamic> raw = jsonDecode(jsonString);
    return raw.map((e) => DetailData.fromJSON(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    dynamic obj = ModalRoute.of(context).settings.arguments;
    if (obj != null) {
      _id = obj["id"];
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: getDetailDateFromJson(context),
          builder: (context, data) {
            if (data.hasData) {
              List<DetailData> detailDatas = data.data;
              print(detailDatas[_id].title);
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(detailDatas[_id].src))),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 50,
                              right: 20,
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 28,
                              )),
                        ],
                      )),
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Text(
                      detailDatas[_id].title,
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 5,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      detailDatas[_id].smallTitle,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: Text(
                      detailDatas[_id].botTitle,
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                  ),
                ],
              );
            } else {
              return Center(
                child: Text('no-data'),
              );
            }
          }),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:testApp/factory/homedata.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<HomeData>> getHomeDataFromJson(BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/jsons/home.json');
    List<dynamic> raw = jsonDecode(jsonString);
    return raw.map((e) => HomeData.fromJSON(e)).toList();
  }

  void _goToDetail(id) {
    Navigator.of(context)
        .pushNamed('Detail', arguments: {'id': id});
    print(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //导航栏
          automaticallyImplyLeading: false,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.menu),
            onPressed: () {
              print('menu');
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                print('search');
              },
            ),
          ],
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 440,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 180.0),
                        child: Center(
                          child: Text(
                            'photolyphia.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Center(
                          child: Text(
                            'STOCK PHOTOS',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  child: FutureBuilder(
                      future: getHomeDataFromJson(context),
                      builder: (context, data) {
                        if (data.hasData) {
                          List<HomeData> homedatas = data.data;
                          return Container(
                            height: 300.0 * homedatas.length,
                            child: ListView.builder(
                                itemCount: homedatas.length,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      _goToDetail(index);
                                    },
                                    child: Container(
                                      height: 260,
                                      margin: EdgeInsets.only(top: 40.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  143, 148, 251, .3),
                                              blurRadius: 20.0,
                                              offset: Offset(0, 10))
                                        ],
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: 190,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Image.network(
                                              homedatas[index].src,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            height: 70,
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  child: Text(
                                                    homedatas[index].title,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  padding: EdgeInsets.only(
                                                      left: 20.0),
                                                ),
                                                Padding(
                                                  child: Text(
                                                    '|',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                  padding: EdgeInsets.fromLTRB(
                                                      10.0, 0, 10.0, 0),
                                                ),
                                                Text(
                                                  '${homedatas[index].number} PHOTOS',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          );
                        } else {
                          return Center(
                            child: Text('no-data'),
                          );
                        }
                      }),
                )
              ],
            ),
          ),
        ));
  }
}

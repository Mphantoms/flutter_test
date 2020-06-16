
import 'package:flutter/material.dart';

class ListHome extends StatefulWidget {
  ListHome({Key key}) : super(key: key);

  @override
  _ListHomeState createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
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
      body: Container(
        color: Colors.grey[100],
        child: GridView.count(
          primary: false,
          crossAxisCount: 2,
          padding: EdgeInsets.all(32.0),
          mainAxisSpacing: 32.0,
          crossAxisSpacing: 32.0,
          childAspectRatio: 1.0,
          children: [
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591876527184&di=8f0d0de2970eeeb39aa17060370bb19e&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201603%2F05%2F20160305111225_f4ijY.thumb.700_0.jpeg')
              ),
            ),
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591876527184&di=8f0d0de2970eeeb39aa17060370bb19e&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201603%2F05%2F20160305111225_f4ijY.thumb.700_0.jpeg')
              ),
            ),
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591876527184&di=8f0d0de2970eeeb39aa17060370bb19e&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201603%2F05%2F20160305111225_f4ijY.thumb.700_0.jpeg')
              ),
            ),
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591876527184&di=8f0d0de2970eeeb39aa17060370bb19e&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201603%2F05%2F20160305111225_f4ijY.thumb.700_0.jpeg')
              ),
            ),
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591876527184&di=8f0d0de2970eeeb39aa17060370bb19e&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201603%2F05%2F20160305111225_f4ijY.thumb.700_0.jpeg')
              ),
            ),
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591876527184&di=8f0d0de2970eeeb39aa17060370bb19e&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201603%2F05%2F20160305111225_f4ijY.thumb.700_0.jpeg')
              ),
            ),
            
          ],
        )
      ),
    );
  }
}
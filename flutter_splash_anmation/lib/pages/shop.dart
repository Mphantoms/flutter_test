import 'package:flutter/material.dart';
import 'package:flutter_splash_anmation/Animation/fadeAnimation.dart';
import 'package:flutter_splash_anmation/pages/category.dart';
class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeAnimation(1.0,Container(
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/background.jpg'))),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.4)
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: FadeAnimation(1.2,Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FadeAnimation(1.2,IconButton(
                                icon: Icon(Icons.favorite, color: Colors.white),
                                onPressed: () {})),
                            FadeAnimation(1.3,IconButton(
                                icon: Icon(Icons.shopping_cart,
                                    color: Colors.white),
                                onPressed: () {}))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FadeAnimation(1.5,Text(
                                'Our New Products',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  FadeAnimation(1.7,Text(
                                    'VIEW MORE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  FadeAnimation(1.7,Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 15.0,
                                  )),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                ))),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  FadeAnimation(1.9,Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text('All')
                    ],
                  )),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(2.2,Container(
                    height: 150.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeCategory(image: 'assets/images/beauty.jpg',title: 'Beauty',tag: 'Beauty'),
                        makeCategory(image: 'assets/images/clothes.jpg',title: 'Clothes',tag: 'Clothes'),
                        makeCategory(image: 'assets/images/perfume.jpg',title: 'Perfume',tag: 'Perfume'),
                        makeCategory(image: 'assets/images/glass.jpg',title: 'Glass',tag: 'Glass'),
                      ],
                    ),
                  )),
                  SizedBox(height: 40.0,),
                  FadeAnimation(2.4,Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best Selling By Category',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text('All')
                    ],
                  )),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(2.6,Container(
                    height: 150.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeBestCategory(image: 'assets/images/tech.jpg',title: 'Tech',tag: 'Beauty'),
                        makeBestCategory(image: 'assets/images/watch.jpg',title: 'Watch',tag: 'Clothes'),
                        makeBestCategory(image: 'assets/images/person.jpg',title: 'Person',tag: 'Perfume'),
                        makeBestCategory(image: 'assets/images/clothes-1.jpg',title: 'Clothes',tag: 'Glass'),
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeBestCategory({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('$image'))),
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(0)
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '$title',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }


  Widget makeCategory({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ( context )=>Category(image: image,title: title,tag: tag,)));
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('$image'))),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(0)
                    ])),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '$title',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

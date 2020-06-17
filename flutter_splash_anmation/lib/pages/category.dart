import 'package:flutter/material.dart';
import 'package:flutter_splash_anmation/Animation/fadeAnimation.dart';

class Category extends StatefulWidget {
  final String title;
  final String image;
  final String tag;

  const Category({Key key, this.title, this.image, this.tag}) : super(key: key);
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(widget.image))),
                  child: Container(
                    height: 250,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1)
                        ])),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios,
                                    color: Colors.white),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            Row(
                              children: [
                                FadeAnimation(
                                    1.2,
                                    IconButton(
                                        icon: Icon(Icons.search,
                                            color: Colors.white),
                                        onPressed: () {})),
                                FadeAnimation(
                                    1.2,
                                    IconButton(
                                        icon: Icon(Icons.favorite,
                                            color: Colors.white),
                                        onPressed: () {})),
                                FadeAnimation(
                                    1.3,
                                    IconButton(
                                        icon: Icon(Icons.shopping_cart,
                                            color: Colors.white),
                                        onPressed: () {}))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        FadeAnimation(1.4,Text(
                          '${widget.title}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  FadeAnimation(1.5,Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New Product',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('View More',style: TextStyle(color: Colors.grey,)),
                          SizedBox(width: 5.0,),
                          Icon(Icons.arrow_forward_ios,size: 12,color: Colors.grey,)
                        ],
                      )
                    ],
                  )),
                  SizedBox(height: 20.0,),
                  FadeAnimation(1.6,makeProduct(image: 'assets/images/clothes-1.jpg',title: 'clothes',price: '¥ 100')),
                  FadeAnimation(1.7,makeProduct(image: 'assets/images/beauty-1.jpg',title: 'beauty',price: '¥ 500')),
                  FadeAnimation(1.8,makeProduct(image: 'assets/images/glass.jpg',title: 'glass',price: '¥ 200')),
                  FadeAnimation(1.9,makeProduct(image: 'assets/images/tech-1.jpg',title: 'tech',price: '¥ 400')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget makeProduct({image,title,price}){
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
        fit: BoxFit.cover, image: AssetImage(image)),
      ),
      child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(0)
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '$title',
                style: TextStyle(color: Colors.white,fontSize: 20.0,),
              ),
            ],
          )
      ),
    );
  }
}

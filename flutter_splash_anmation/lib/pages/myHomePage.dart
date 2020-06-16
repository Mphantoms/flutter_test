
import 'package:flutter/material.dart';
import 'package:flutter_splash_anmation/Animation/fadeAnimation.dart';
import 'package:flutter_splash_anmation/pages/shop.dart';
import 'package:page_transition/page_transition.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool hide = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300
      )
      
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 30.0
    ).animate(_scaleController)
      ..addStatusListener((status) { 
        if(status==AnimationStatus.completed){
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Shop()));
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/splash2.jpeg'
            ),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4)
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeAnimation(1.0,Text(
                  'BRAND NEW DESIGN!!!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                SizedBox(height: 20,),
                FadeAnimation(1.2,Text(
                  'Let‘s Start with our Sumary Collection.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
                SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    setState(() {
                      hide = true;
                    });
                    _scaleController.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController, 
                    builder: (context,child) => Transform.scale(
                      scale: _scaleAnimation.value,
                      child: FadeAnimation(1.4,Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Center(
                          child: hide == false ? Text(
                            'Get Start',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),
                          ) : Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                          )
                        ),
                      )),
                    )
                  )
                ),
                SizedBox(height: 20,),
                FadeAnimation(1.6,Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Center(
                    child: Text(
                      'Create Accout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                )),
                SizedBox(height: 30,),
              ],
            ),
          )
        )
      ),
    );
  }
}
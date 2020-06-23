import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_reduxs/model/model.dart';
import 'package:flutter_reduxs/redux/actions.dart';
import 'package:flutter_reduxs/redux/reduces.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final Store<AppState> _store = Store<AppState>(
    appReducer,
    initialState: AppState()
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: _store,
        child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Container(
          color: Colors.white,
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              StoreConnector<AppState,AppState>(
                builder: (context,state)=>Container(
                  child: Text(
                    '${state.num1}'
                  ),
                ),
                converter: (store)=>store.state
              ),
              StoreConnector<AppState,AppState>(
                builder: (context,state)=>GestureDetector(
                  onTap: (){
                    StoreProvider.of<AppState>(context).dispatch(Num1(100.0));
                  },
                  child: Container(
                    child: Text(
                      '点击改变'
                    ),
                  ),
                ),
                converter: (store)=>store.state
              )
            ],
          )
        )
      ),
    );
  }
}
import 'package:flutter_reduxs/model/model.dart';
import 'actions.dart';

AppState appReducer(AppState state,dynamic action) {
  AppState newState = AppState.fromAppState(state);
  if(action is Num1){
    newState.num1 = action.pyload;
  }else if(action is Num2){
    newState.num2 = action.pyload;
  }else if(action is Num3){
    newState.num3 = action.pyload;
  }
  return newState;
}
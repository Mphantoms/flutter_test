class AppState{
  double num1;
  double num2;
  double num3;
  AppState({
    this.num1 = 2,
    this.num2 = 3,
    this.num3 = 4
  });
  AppState.fromAppState(AppState author){
    num1 = author.num1;
    num2 = author.num2;
    num3 = author.num3;
  }
}

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class Barsales {
  String day;
  int sale;
  Color color;
  Barsales(this.day, this.sale,this.color);
}
class BarChart extends StatelessWidget {
  const BarChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Barsales> dataBar = [
      new Barsales("≤18", 16, Color.fromRGBO(98,178,238,1)),
      new Barsales("19-23", 21, Color.fromRGBO(248,149,136,1)),
      new Barsales("24-28", 21, Color.fromRGBO(248,203,127,1)),
      new Barsales("29-38", 35, Color.fromRGBO(56,218,188,1)),
      new Barsales("39+", 12, Color.fromRGBO(79,79,79,1)),
    ];
    int total = 100;
    var seriesBar = [
      charts.Series(
        data: dataBar,
        domainFn: (Barsales sales, _) => sales.day,
        measureFn: (Barsales sales, _) => sales.sale,
        colorFn: (_, __) {
          return charts.MaterialPalette.blue.shadeDefault;
        },
        labelAccessorFn: (Barsales sales, _) => '${(sales.sale / total * 100).toString()} %',
        id: "Sales",
      )
    ];
    return charts.BarChart(seriesBar,animate: true);
  }
}
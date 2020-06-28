import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class PieChart1 extends StatelessWidget {
  const PieChart1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      new ClicksPerYear('男生', 70, Color.fromRGBO(98,178,238,1)),
      new ClicksPerYear('女生', 20, Color.fromRGBO(248,149,136,1)),
      new ClicksPerYear('未知', 10, Color.fromRGBO(248,203,127,1)),
    ];
    var series = [
      new charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'PieChart1',
        data: data,
      ),
    ];
    return charts.PieChart(
        series,
        animate: true,
    );
  }
}

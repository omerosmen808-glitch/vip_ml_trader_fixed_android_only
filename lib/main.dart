\
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VIP ML Trader v2 (sample)',
      home: Scaffold(
        appBar: AppBar(title: const Text('VIP ML Trader v2 - Sample')),
        body: const Center(child: ChartSample()),
      ),
    );
  }
}

class ChartSample extends StatelessWidget {
  const ChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      LinearSales(0, 5),
      LinearSales(1, 25),
      LinearSales(2, 100),
      LinearSales(3, 75),
    ];

    final series = [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];

    return SizedBox(
      height: 300,
      child: charts.LineChart(series, animate: true),
    );
  }
}

class LinearSales {
  final int year;
  final int sales;
  LinearSales(this.year, this.sales);
}

import 'package:erato/screens/home/cityCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:erato/models/city.dart';

class Citys extends StatefulWidget {
  @override
  _CitysState createState() => _CitysState();
}

class _CitysState extends State<Citys> {
  @override
  Widget build(BuildContext context) {
    final city = Provider.of<List<City>>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0.0,
        backgroundColor: Colors.amber[800],
      ),
      body: ListView.builder(
        itemCount: city.length,
        itemBuilder: (context, index) {
          return CityCard(city: city[index]);
        },
      ),
    );
  }
}

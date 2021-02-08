import 'package:flutter/material.dart';
import 'package:erato/models/city.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard({this.city});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          title: Text(
            city.cityName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(city.countryName),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(city.cityName),
                    backgroundColor: Colors.amber[800],
                  ),
                  body: ListView(
                    padding: EdgeInsets.all(8.0),
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    city.cityName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    city.line1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nisja ' + city.line1time,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    ' Arritja ' + city.line1time1,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(city.line1price)],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    city.cityName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    city.line2,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nisja ' + city.line2time,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    ' Arritja ' + city.line2time2,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(city.line2price)],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    city.cityName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    city.line3,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nisja ' + city.line3time,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    ' Arritja ' + city.line3time3,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(city.line3price)],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    city.cityName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    city.line4,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nisja ' + city.line4time,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    ' Arritja ' + city.line4time4,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(city.line4price)],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    city.cityName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    city.line5,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nisja ' + city.line5time,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    ' Arritja ' + city.line5time5,
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(city.line5price)],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ));
          },
        ),
      ),
    );
  }
}

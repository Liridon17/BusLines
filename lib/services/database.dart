import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erato/models/city.dart';

class DatabaseService {
  final CollectionReference cityCollection =
      Firestore.instance.collection('city');

  List<City> _cityListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return City(
        cityName: doc.data['cityName'] ?? '',
        countryName: doc.data['countryName'] ?? '',
        line1: doc.data['Line1'] ?? '',
        line1time: doc.data['line1time'] ?? '',
        line1time1: doc.data['line1time1'] ?? '',
        line1price: doc.data['line1price'] ?? '',
        line2: doc.data['Line2'] ?? '',
        line2time: doc.data['line2time'] ?? '',
        line2time2: doc.data['line2time2'] ?? '',
        line2price: doc.data['line2price'] ?? '',
        line3: doc.data['Line3'] ?? '',
        line3time: doc.data['line3time'] ?? '',
        line3time3: doc.data['line3time3'] ?? '',
        line3price: doc.data['line3price'] ?? '',
        line4: doc.data['Line4'] ?? '',
        line4time: doc.data['line4time'] ?? '',
        line4time4: doc.data['line4time4'] ?? '',
        line4price: doc.data['line4price'] ?? '',
        line5: doc.data['Line5'] ?? '',
        line5time: doc.data['line5time'] ?? '',
        line5time5: doc.data['line5time5'] ?? '',
        line5price: doc.data['line5price'] ?? '',
      );
    }).toList();
  }

  Stream<List<City>> get city {
    return cityCollection.snapshots().map(_cityListFromSnapshot);
  }
}

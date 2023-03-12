import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_tips/src/core/domain/status.dart';
import 'package:travel_tips/src/tour/models/tour.dart';

class TourRepository {
  final _db = FirebaseFirestore.instance;
  Future<List<Tour>> getTours() async {
    try {
      final snapshot = await _db.collection('tours').get();
      final data = snapshot.docs;
      final tours = data.map((e) => Tour.fromJson(e.data())).toList();
      return tours;
    } catch (e) {
      throw Failure.server(e.toString());
    }
  }
}

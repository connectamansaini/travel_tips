import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_tips/src/custom_tour/models/custom_tour.dart';

class CustomTourRepository {
  final _db = FirebaseFirestore.instance;

  Future<void> addData(CustomTour tour) async {
    try {
      await _db.collection('customPlans').doc(tour.id).set(tour.toJson());
    } catch (e) {
      rethrow;
    }
  }
}

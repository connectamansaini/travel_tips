part of 'tour_bloc.dart';

class TourState {
  const TourState({
    this.tours = const [],
    this.toursStatus = const StatusInitial(),
  });

  final List<Tour> tours;
  final Status toursStatus;

  TourState copyWith({
    List<Tour>? tours,
    Status? toursStatus,
  }) {
    return TourState(
      tours: tours ?? this.tours,
      toursStatus: toursStatus ?? this.toursStatus,
    );
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:travel_tips/src/core/domain/status.dart';
import 'package:travel_tips/src/tour/models/tour.dart';
import 'package:travel_tips/src/tour/repository/tour_repository.dart';

part 'tour_event.dart';
part 'tour_state.dart';

class TourBloc extends Bloc<TourEvent, TourState> {
  TourBloc(this.tourRepository) : super(const TourState()) {
    on<ToursRequested>(_onToursRequested);
  }
  final TourRepository tourRepository;

  Future<void> _onToursRequested(
    ToursRequested event,
    Emitter<TourState> emit,
  ) async {
    try {
      emit(state.copyWith(toursStatus: Status.loading()));
      final tours = await tourRepository.getTours();
      emit(
        state.copyWith(
          toursStatus: Status.success(),
          tours: tours,
        ),
      );
    } on Failure catch (f) {
      emit(state.copyWith(toursStatus: Status.failure(f)));
    }
  }
}

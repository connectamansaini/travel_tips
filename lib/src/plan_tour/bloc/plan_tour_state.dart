part of 'plan_tour_bloc.dart';

class PlanTourState {
  PlanTourState({
    this.planTour = PlanTour.empty,
  });

  final PlanTour planTour;

  PlanTourState copyWith({
    PlanTour? planTour,
  }) {
    return PlanTourState(
      planTour: planTour ?? this.planTour,
    );
  }
}

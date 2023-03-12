part of 'plan_tour_bloc.dart';

abstract class PlanTourEvent {
  const PlanTourEvent();
}

class NameChanged extends PlanTourEvent {
  NameChanged(this.name);

  final String name;
}

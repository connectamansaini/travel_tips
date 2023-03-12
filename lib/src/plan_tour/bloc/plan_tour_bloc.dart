import 'package:bloc/bloc.dart';
import 'package:travel_tips/src/plan_tour/models/plan_tour.dart';

part 'plan_tour_event.dart';
part 'plan_tour_state.dart';

class PlanTourBloc extends Bloc<PlanTourEvent, PlanTourState> {
  PlanTourBloc() : super(PlanTourState()) {
    on<NameChanged>(_onNameChanged);
  }

  void _onNameChanged(NameChanged event, Emitter<PlanTourState> emit) {
    emit(state.copyWith(planTour: state.planTour.copyWith(name: event.name)));
  }
}

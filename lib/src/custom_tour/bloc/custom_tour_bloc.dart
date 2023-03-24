import 'package:bloc/bloc.dart';
import 'package:travel_tips/src/core/domain/enums.dart';
import 'package:travel_tips/src/core/domain/status.dart';
import 'package:travel_tips/src/custom_tour/models/custom_tour.dart';
import 'package:travel_tips/src/custom_tour/repository/custom_tour_repository.dart';
import 'package:uuid/uuid.dart';

part 'custom_tour_event.dart';
part 'custom_tour_state.dart';

class CustomTourBloc extends Bloc<CustomTourEvent, CustomTourState> {
  CustomTourBloc(this.customTourRepository) : super(const CustomTourState()) {
    on<NameChanged>(_onNameChanged);
    on<DestinationChanged>(_onDestinationChanged);
    on<BaseLocationChanged>(_onBaseLocationChanged);
    on<DepartureDateChanged>(_onDepartureDateChanged);
    on<IsExploreDestinationChanged>(_onIsExploreDestinationChanged);
    on<DaysChanged>(_onDaysChanged);
    on<FlightChanged>(_onFlightChanged);
    on<CabChanged>(_onCabChanged);
    on<HotelCategoryChanged>(_onHotelCategoryChanged);
    on<BudgetPerPersonChanged>(_onBudgetPerPersonChanged);
    on<AdultChanged>(_onAdultChanged);
    on<ChildrenChanged>(_onChildChanged);
    on<InfantChanged>(_onInfantChanged);
    on<EmailIdChanged>(_onEmailIdChanged);
    on<PhoneNoChanged>(_onPhoneNoChanged);
    on<TourUploaded>(_onTourUploaded);
  }
  final CustomTourRepository customTourRepository;
  void _onNameChanged(NameChanged event, Emitter<CustomTourState> emit) {
    emit(
      state.copyWith(
        customTour: state.customTour.copyWith(name: event.name),
      ),
    );
  }

  void _onDestinationChanged(
    DestinationChanged event,
    Emitter<CustomTourState> emit,
  ) {
    emit(
      state.copyWith(
        customTour: state.customTour.copyWith(destination: event.destination),
      ),
    );
  }

  void _onBaseLocationChanged(
    BaseLocationChanged event,
    Emitter<CustomTourState> emit,
  ) {
    emit(
      state.copyWith(
        customTour: state.customTour.copyWith(baseLocation: event.baseLocation),
      ),
    );
  }

  void _onDepartureDateChanged(
    DepartureDateChanged event,
    Emitter<CustomTourState> emit,
  ) {
    emit(
      state.copyWith(
        customTour:
            state.customTour.copyWith(departureDate: event.departureDate),
      ),
    );
  }

  void _onIsExploreDestinationChanged(
    IsExploreDestinationChanged event,
    Emitter<CustomTourState> emit,
  ) {
    emit(
      state.copyWith(
        customTour: state.customTour
            .copyWith(isExploreDestination: event.isExploreDestination),
      ),
    );
  }

  void _onDaysChanged(DaysChanged event, Emitter<CustomTourState> emit) {
    if (!event.isIncremented && state.customTour.days > 1) {
      emit(
        state.copyWith(
          customTour:
              state.customTour.copyWith(days: state.customTour.days - 1),
        ),
      );
    } else {
      emit(
        state.copyWith(
          customTour:
              state.customTour.copyWith(days: state.customTour.days + 1),
        ),
      );
    }
  }

  void _onFlightChanged(FlightChanged event, Emitter<CustomTourState> emit) {
    emit(
      state.copyWith(
        customTour: state.customTour
            .copyWith(isFlightSelected: !state.customTour.isFlightSelected),
      ),
    );
  }

  void _onCabChanged(CabChanged event, Emitter<CustomTourState> emit) {
    emit(
      state.copyWith(
        customTour: state.customTour
            .copyWith(isCabSelected: !state.customTour.isCabSelected),
      ),
    );
  }

  void _onHotelCategoryChanged(
    HotelCategoryChanged event,
    Emitter<CustomTourState> emit,
  ) {
    if (state.customTour.hotelCategories.contains(event.hotelCategory)) {
      emit(
        state.copyWith(
          customTour: state.customTour.copyWith(
            hotelCategories: List.of(state.customTour.hotelCategories)
              ..remove(event.hotelCategory),
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          customTour: state.customTour.copyWith(
            hotelCategories: List.of(
              state.customTour.hotelCategories,
            )..add(event.hotelCategory),
          ),
        ),
      );
    }
  }

  void _onBudgetPerPersonChanged(
    BudgetPerPersonChanged event,
    Emitter<CustomTourState> emit,
  ) {
    emit(
      state.copyWith(
        customTour:
            state.customTour.copyWith(budgetPerPerson: event.budgetPerPerson),
      ),
    );
  }

  void _onAdultChanged(
    AdultChanged event,
    Emitter<CustomTourState> emit,
  ) {
    if (event.isIncremented) {
      return emit(
        state.copyWith(
          customTour:
              state.customTour.copyWith(adult: state.customTour.adult + 1),
        ),
      );
    }

    if (state.customTour.adult > 1) {
      emit(
        state.copyWith(
          customTour:
              state.customTour.copyWith(adult: state.customTour.adult - 1),
        ),
      );
    }
  }

  void _onChildChanged(
    ChildrenChanged event,
    Emitter<CustomTourState> emit,
  ) {
    if (!event.isIncremented) {
      if (state.customTour.children > 0) {
        emit(
          state.copyWith(
            customTour: state.customTour
                .copyWith(children: state.customTour.children - 1),
          ),
        );
      }
    } else {
      emit(
        state.copyWith(
          customTour: state.customTour
              .copyWith(children: state.customTour.children + 1),
        ),
      );
    }
  }

  void _onInfantChanged(
    InfantChanged event,
    Emitter<CustomTourState> emit,
  ) {
    if (!event.isIncremented) {
      if (state.customTour.infant > 0) {
        emit(
          state.copyWith(
            customTour:
                state.customTour.copyWith(infant: state.customTour.infant - 1),
          ),
        );
      }
    } else {
      emit(
        state.copyWith(
          customTour:
              state.customTour.copyWith(infant: state.customTour.infant + 1),
        ),
      );
    }
  }

  void _onEmailIdChanged(
    EmailIdChanged event,
    Emitter<CustomTourState> emit,
  ) {
    emit(
      state.copyWith(
        customTour: state.customTour.copyWith(emailId: event.emailId),
      ),
    );
  }

  void _onPhoneNoChanged(
    PhoneNoChanged event,
    Emitter<CustomTourState> emit,
  ) {
    emit(
      state.copyWith(
        customTour: state.customTour.copyWith(phoneNo: event.phoneNo),
      ),
    );
  }

  Future<void> _onTourUploaded(
    TourUploaded event,
    Emitter<CustomTourState> emit,
  ) async {
    try {
      final uuid = const Uuid().v4();
      emit(state.copyWith(customTour: state.customTour.copyWith(id: uuid)));

      emit(state.copyWith(uploadTourStatus: Status.loading()));

      await customTourRepository.addData(state.customTour);

      emit(state.copyWith(uploadTourStatus: Status.success()));
    } on Failure catch (f) {
      emit(state.copyWith(uploadTourStatus: Status.failure(f)));
    }
  }
}

part of 'custom_tour_bloc.dart';

abstract class CustomTourEvent {
  const CustomTourEvent();
}

class NameChanged extends CustomTourEvent {
  NameChanged(this.name);

  final String name;
}

class DestinationChanged extends CustomTourEvent {
  DestinationChanged(this.destination);

  final String destination;
}

class BaseLocationChanged extends CustomTourEvent {
  BaseLocationChanged(this.baseLocation);

  final String baseLocation;
}

class DepartureDateChanged extends CustomTourEvent {
  DepartureDateChanged(this.departureDate);

  final DateTime departureDate;
}

class IsExploreDestinationChanged extends CustomTourEvent {
  IsExploreDestinationChanged({required this.isExploreDestination});

  final bool isExploreDestination;
}

class DaysChanged extends CustomTourEvent {
  DaysChanged({required this.isIncremented});

  final bool isIncremented;
}

class FlightChanged extends CustomTourEvent {}

class CabChanged extends CustomTourEvent {}

class HotelCategoryChanged extends CustomTourEvent {
  HotelCategoryChanged(this.hotelCategory);

  final Rating hotelCategory;
}

class BudgetPerPersonChanged extends CustomTourEvent {
  BudgetPerPersonChanged(this.budgetPerPerson);

  final int budgetPerPerson;
}

class AdultChanged extends CustomTourEvent {
  AdultChanged({required this.isIncremented});

  final bool isIncremented;
}

class ChildrenChanged extends CustomTourEvent {
  ChildrenChanged({required this.isIncremented});

  final bool isIncremented;
}

class InfantChanged extends CustomTourEvent {
  InfantChanged({required this.isIncremented});

  final bool isIncremented;
}

class EmailIdChanged extends CustomTourEvent {
  EmailIdChanged(this.emailId);

  final String emailId;
}

class PhoneNoChanged extends CustomTourEvent {
  PhoneNoChanged(this.phoneNo);

  final int phoneNo;
}

class TourUploaded extends CustomTourEvent {}

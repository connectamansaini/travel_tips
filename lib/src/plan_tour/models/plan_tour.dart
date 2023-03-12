import 'package:json_annotation/json_annotation.dart';

import 'package:travel_tips/src/core/domain/enums.dart';

part 'plan_tour.g.dart';

@JsonSerializable()
class PlanTour {
  const PlanTour({
    this.id = '',
    this.name = '',
    this.destination = '',
    this.exploreDestination = false,
    this.baseLocation = '',
    this.departureDate,
    this.days = 0,
    this.flight = false,
    this.cab = false,
    this.hotelCategory = HotelCategory.star3,
    this.budgetPerPerson = 0,
    this.adult = 2,
    this.children = 0,
    this.infant = 0,
    this.emailId = '',
    this.phoneNo = 0,
  });

  factory PlanTour.fromJson(Map<String, dynamic> json) =>
      _$PlanTourFromJson(json);
  Map<String, dynamic> toJson() => _$PlanTourToJson(this);

  final String id;
  final String name;
  final String destination;
  final bool exploreDestination;
  final String baseLocation;
  final DateTime? departureDate;
  final int days;
  final bool flight;
  final bool cab;
  final HotelCategory hotelCategory;
  final int budgetPerPerson;
  final int adult;
  final int children;
  final int infant;
  final String emailId;
  final int phoneNo;

  static const empty = PlanTour();

  PlanTour copyWith({
    String? id,
    String? name,
    String? destination,
    bool? exploreDestination,
    String? baseLocation,
    DateTime? departureDate,
    int? days,
    bool? flight,
    bool? cab,
    HotelCategory? hotelCategory,
    int? budgetPerPerson,
    int? adult,
    int? children,
    int? infant,
    String? emailId,
    int? phoneNo,
  }) {
    return PlanTour(
      id: id ?? this.id,
      name: name ?? this.name,
      destination: destination ?? this.destination,
      exploreDestination: exploreDestination ?? this.exploreDestination,
      baseLocation: baseLocation ?? this.baseLocation,
      departureDate: departureDate ?? this.departureDate,
      days: days ?? this.days,
      flight: flight ?? this.flight,
      cab: cab ?? this.cab,
      hotelCategory: hotelCategory ?? this.hotelCategory,
      budgetPerPerson: budgetPerPerson ?? this.budgetPerPerson,
      adult: adult ?? this.adult,
      children: children ?? this.children,
      infant: infant ?? this.infant,
      emailId: emailId ?? this.emailId,
      phoneNo: phoneNo ?? this.phoneNo,
    );
  }
}

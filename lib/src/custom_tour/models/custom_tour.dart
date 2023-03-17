import 'package:json_annotation/json_annotation.dart';

import 'package:travel_tips/src/core/domain/enums.dart';

part 'custom_tour.g.dart';

@JsonSerializable()
class CustomTour {
  const CustomTour({
    this.id = '',
    this.name = '',
    this.destination = '',
    this.isExploreDestination = false,
    this.baseLocation = '',
    this.departureDate,
    this.days = 1,
    this.isFlightSelected = false,
    this.isCabSelected = false,
    this.hotelCategories = const [],
    this.budgetPerPerson = 0,
    // TODO(ask): How to make this 3 variable one? Should I use Map?
    this.adult = 2,
    this.children = 0,
    this.infant = 0,
    this.emailId = '',
    this.phoneNo = 0,
  });

  factory CustomTour.fromJson(Map<String, dynamic> json) =>
      _$CustomTourFromJson(json);
  Map<String, dynamic> toJson() => _$CustomTourToJson(this);

  final String id;
  final String name;
  final String destination;
  final bool isExploreDestination;
  final String baseLocation;
  final DateTime? departureDate;
  final int days;
  final bool isFlightSelected;
  final bool isCabSelected;
  final List<Rating> hotelCategories;
  final int budgetPerPerson;
  final int adult;
  final int children;
  final int infant;
  final String emailId;
  final int phoneNo;

  static const empty = CustomTour();

  CustomTour copyWith({
    String? id,
    String? name,
    String? destination,
    bool? isExploreDestination,
    String? baseLocation,
    DateTime? departureDate,
    int? days,
    bool? isFlightSelected,
    bool? isCabSelected,
    List<Rating>? hotelCategories,
    int? budgetPerPerson,
    int? adult,
    int? children,
    int? infant,
    String? emailId,
    int? phoneNo,
  }) {
    return CustomTour(
      id: id ?? this.id,
      name: name ?? this.name,
      destination: destination ?? this.destination,
      isExploreDestination: isExploreDestination ?? this.isExploreDestination,
      baseLocation: baseLocation ?? this.baseLocation,
      departureDate: departureDate ?? this.departureDate,
      days: days ?? this.days,
      isFlightSelected: isFlightSelected ?? this.isFlightSelected,
      isCabSelected: isCabSelected ?? this.isCabSelected,
      hotelCategories: hotelCategories ?? this.hotelCategories,
      budgetPerPerson: budgetPerPerson ?? this.budgetPerPerson,
      adult: adult ?? this.adult,
      children: children ?? this.children,
      infant: infant ?? this.infant,
      emailId: emailId ?? this.emailId,
      phoneNo: phoneNo ?? this.phoneNo,
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanTour _$PlanTourFromJson(Map<String, dynamic> json) => PlanTour(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      destination: json['destination'] as String? ?? '',
      exploreDestination: json['exploreDestination'] as bool? ?? false,
      baseLocation: json['baseLocation'] as String? ?? '',
      departureDate: json['departureDate'] == null
          ? null
          : DateTime.parse(json['departureDate'] as String),
      days: json['days'] as int? ?? 0,
      flight: json['flight'] as bool? ?? false,
      cab: json['cab'] as bool? ?? false,
      hotelCategory:
          $enumDecodeNullable(_$HotelCategoryEnumMap, json['hotelCategory']) ??
              HotelCategory.star3,
      budgetPerPerson: json['budgetPerPerson'] as int? ?? 0,
      adult: json['adult'] as int? ?? 2,
      children: json['children'] as int? ?? 0,
      infant: json['infant'] as int? ?? 0,
      emailId: json['emailId'] as String? ?? '',
      phoneNo: json['phoneNo'] as int? ?? 0,
    );

Map<String, dynamic> _$PlanTourToJson(PlanTour instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'destination': instance.destination,
      'exploreDestination': instance.exploreDestination,
      'baseLocation': instance.baseLocation,
      'departureDate': instance.departureDate?.toIso8601String(),
      'days': instance.days,
      'flight': instance.flight,
      'cab': instance.cab,
      'hotelCategory': _$HotelCategoryEnumMap[instance.hotelCategory]!,
      'budgetPerPerson': instance.budgetPerPerson,
      'adult': instance.adult,
      'children': instance.children,
      'infant': instance.infant,
      'emailId': instance.emailId,
      'phoneNo': instance.phoneNo,
    };

const _$HotelCategoryEnumMap = {
  HotelCategory.star5: 'star5',
  HotelCategory.star4: 'star4',
  HotelCategory.star3: 'star3',
  HotelCategory.star2: 'star2',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomTour _$CustomTourFromJson(Map<String, dynamic> json) => CustomTour(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      destination: json['destination'] as String? ?? '',
      isExploreDestination: json['isExploreDestination'] as bool? ?? false,
      baseLocation: json['baseLocation'] as String? ?? '',
      departureDate: json['departureDate'] == null
          ? null
          : DateTime.parse(json['departureDate'] as String),
      days: json['days'] as int? ?? 1,
      isFlightSelected: json['isFlightSelected'] as bool? ?? false,
      isCabSelected: json['isCabSelected'] as bool? ?? false,
      hotelCategories: (json['hotelCategories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$RatingEnumMap, e))
              .toList() ??
          const [],
      budgetPerPerson: json['budgetPerPerson'] as int? ?? 0,
      adult: json['adult'] as int? ?? 2,
      children: json['children'] as int? ?? 0,
      infant: json['infant'] as int? ?? 0,
      emailId: json['emailId'] as String? ?? '',
      phoneNo: json['phoneNo'] as int? ?? 0,
    );

Map<String, dynamic> _$CustomTourToJson(CustomTour instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'destination': instance.destination,
      'isExploreDestination': instance.isExploreDestination,
      'baseLocation': instance.baseLocation,
      'departureDate': instance.departureDate?.toIso8601String(),
      'days': instance.days,
      'isFlightSelected': instance.isFlightSelected,
      'isCabSelected': instance.isCabSelected,
      'hotelCategories':
          instance.hotelCategories.map((e) => _$RatingEnumMap[e]!).toList(),
      'budgetPerPerson': instance.budgetPerPerson,
      'adult': instance.adult,
      'children': instance.children,
      'infant': instance.infant,
      'emailId': instance.emailId,
      'phoneNo': instance.phoneNo,
    };

const _$RatingEnumMap = {
  Rating.star5: 'star5',
  Rating.star4: 'star4',
  Rating.star3: 'star3',
  Rating.star2: 'star2',
};

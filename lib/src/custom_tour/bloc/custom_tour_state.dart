part of 'custom_tour_bloc.dart';

class CustomTourState {
  const CustomTourState({
    this.uploadTourStatus = const StatusInitial(),
    this.customTour = CustomTour.empty,
  });

  final Status uploadTourStatus;
  final CustomTour customTour;

  CustomTourState copyWith({
    Status? uploadTourStatus,
    CustomTour? customTour,
  }) {
    return CustomTourState(
      uploadTourStatus: uploadTourStatus ?? this.uploadTourStatus,
      customTour: customTour ?? this.customTour,
    );
  }
}

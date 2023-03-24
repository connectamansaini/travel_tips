import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/views/widget/navigation_button_widget.dart';

class ShowPlanTour extends StatelessWidget {
  const ShowPlanTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All Details',
        ),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<CustomTourBloc, CustomTourState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Id : ${state.customTour.id}'),
                const Spacing(),
                Text('Name : ${state.customTour.name}'),
                const Spacing(),
                Text('Destination :${state.customTour.destination}'),
                const Spacing(),
                Text(
                  'Wanna Explore ${state.customTour.isExploreDestination}',
                ),
                const Spacing(),
                Text('Base Location: ${state.customTour.baseLocation}'),
                const Spacing(),
                Text('Departure Date: ${state.customTour.departureDate}'),
                const Spacing(),
                Text('No. of days: ${state.customTour.days}'),
                const Spacing(),
                Text('Flight: ${state.customTour.isFlightSelected}'),
                const Spacing(),
                Text('Cab: ${state.customTour.isCabSelected}'),
                const Spacing(),
                Text('Hotel Category: ${state.customTour.hotelCategories}'),
                const Spacing(),
                Text('Budget: ${state.customTour.budgetPerPerson}'),
                const Spacing(),
                Text('Adult: ${state.customTour.adult}'),
                const Spacing(),
                Text('Children: ${state.customTour.children}'),
                const Spacing(),
                Text('Infants: ${state.customTour.infant}'),
                const Spacing(),
                Text('Email ID: ${state.customTour.emailId}'),
                const Spacing(),
                Text('Phone No: ${state.customTour.phoneNo}'),
                const Spacer(),
                const Divider(),
                NavigationButtons(
                  onPressedOnNext: () {
                    context.read<CustomTourBloc>().add(TourUploaded());
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    // Navigator.pushReplacement<void, void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //     builder: (context) => const HomeView(),
                    //   ),
                    // );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

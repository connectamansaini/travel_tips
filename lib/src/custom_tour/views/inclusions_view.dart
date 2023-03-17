import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/views/set_budget.dart';
import 'package:travel_tips/src/custom_tour/views/widget/navigation_button_widget.dart';
import 'package:travel_tips/src/custom_tour/views/widget/square_button.dart';
import 'package:travel_tips/src/custom_tour/views/widget/star_in_grid.dart';

class SelectInclusionsView extends StatefulWidget {
  const SelectInclusionsView({super.key});

  @override
  State<SelectInclusionsView> createState() => _SelectInclusionsViewState();
}

class _SelectInclusionsViewState extends State<SelectInclusionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Inclusions'),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<CustomTourBloc, CustomTourState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Select Hotel Category',
                  style: Theme.of(context).extraSmallTitlePrimaryTextStyle,
                ),
                const Spacing(size: SpacingSize.regular),
                StarInGrid(customTour: state.customTour),
                Text(
                  'Select Other Inclusions',
                  style: Theme.of(context).extraSmallTitlePrimaryTextStyle,
                ),
                const Spacing(size: SpacingSize.regular),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SquareButton(
                      title: 'Flights',
                      icon: Icons.flight,
                      selected: state.customTour.isFlightSelected,
                      onTap: () {
                        context.read<CustomTourBloc>().add(FlightChanged());
                      },
                    ),
                    SquareButton(
                      title: 'Cab',
                      icon: Icons.local_taxi,
                      selected: state.customTour.isCabSelected,
                      onTap: () {
                        context.read<CustomTourBloc>().add(CabChanged());
                      },
                    ),
                  ],
                ),
                const Spacer(),
                const Divider(),
                NavigationButtons(
                  onPressedOnNext: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const SetBudget(),
                      ),
                    );
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

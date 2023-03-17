import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/views/inclusions_view.dart';
import 'package:travel_tips/src/custom_tour/views/widget/add_remove_textfield.dart';
import 'package:travel_tips/src/custom_tour/views/widget/navigation_button_widget.dart';

class SelectDateView extends StatelessWidget {
  const SelectDateView({super.key});
  void _selectDate(BuildContext context, DateTime departureDate) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((pickedDate) {
      if (pickedDate != null && pickedDate != departureDate) {
        context.read<CustomTourBloc>().add(DepartureDateChanged(pickedDate));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Dates',
        ),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<CustomTourBloc, CustomTourState>(
        builder: (context, state) {
          var departureDate = state.customTour.departureDate;
          departureDate ??= DateTime.now();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20.h,
                  child: OutlinedButton.icon(
                    onPressed: () => _selectDate(context, departureDate!),
                    icon: const Icon(
                      Icons.dataset,
                      size: 32,
                    ),
                    label: Text(
                      state.customTour.departureDate == DateTime.now() ||
                              state.customTour.departureDate == null
                          ? 'When you wanna go?'
                          : DateFormat('E, d MMMM, yyyy ')
                              .format(state.customTour.departureDate!),
                      style: Theme.of(context).smallTitlePrimaryTextStyle,
                    ),
                  ),
                ),
                const Spacing(size: SpacingSize.medium),
                Text(
                  'Number of Days',
                  style: Theme.of(context).extraSmallTitlePrimaryTextStyle,
                ),
                const Spacing(),
                AddRemoveTextfield(
                  hintText: state.customTour.days.toString(),
                  onPressedOnAdd: () {
                    context
                        .read<CustomTourBloc>()
                        .add(DaysChanged(isIncremented: true));
                  },
                  onPressedOnRemove: () {
                    context
                        .read<CustomTourBloc>()
                        .add(DaysChanged(isIncremented: false));
                  },
                ),
                const Spacer(),
                const Divider(),
                NavigationButtons(
                  onPressedOnNext: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const SelectInclusionsView(),
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

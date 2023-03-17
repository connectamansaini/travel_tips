import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/views/share_contact_detail.dart';
import 'package:travel_tips/src/custom_tour/views/widget/add_remove_textfield.dart';
import 'package:travel_tips/src/custom_tour/views/widget/navigation_button_widget.dart';

class AddTraveler extends StatelessWidget {
  const AddTraveler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Travelers',
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
                Text(
                  'Adult',
                  style: Theme.of(context).extraSmallTitlePrimaryTextStyle,
                ),
                const Spacing(),
                AddRemoveTextfield(
                  hintText: state.customTour.adult.toString(),
                  onPressedOnAdd: () {
                    context
                        .read<CustomTourBloc>()
                        .add(AdultChanged(isIncremented: true));
                  },
                  onPressedOnRemove: () {
                    context
                        .read<CustomTourBloc>()
                        .add(AdultChanged(isIncremented: false));
                  },
                ),
                const Spacing(
                  size: SpacingSize.regular,
                ),
                Text(
                  'Children',
                  style: Theme.of(context).extraSmallTitlePrimaryTextStyle,
                ),
                const Spacing(),
                AddRemoveTextfield(
                  hintText: state.customTour.children.toString(),
                  onPressedOnAdd: () {
                    context
                        .read<CustomTourBloc>()
                        .add(ChildrenChanged(isIncremented: true));
                  },
                  onPressedOnRemove: () {
                    context
                        .read<CustomTourBloc>()
                        .add(ChildrenChanged(isIncremented: false));
                  },
                ),
                const Spacing(
                  size: SpacingSize.regular,
                ),
                Text(
                  'Infants',
                  style: Theme.of(context).extraSmallTitlePrimaryTextStyle,
                ),
                const Spacing(),
                AddRemoveTextfield(
                  hintText: state.customTour.infant.toString(),
                  onPressedOnAdd: () {
                    context
                        .read<CustomTourBloc>()
                        .add(InfantChanged(isIncremented: true));
                  },
                  onPressedOnRemove: () {
                    context
                        .read<CustomTourBloc>()
                        .add(InfantChanged(isIncremented: false));
                  },
                ),
                const Spacer(),
                const Divider(),
                NavigationButtons(
                  onPressedOnNext: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const ShareContactDetail(),
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

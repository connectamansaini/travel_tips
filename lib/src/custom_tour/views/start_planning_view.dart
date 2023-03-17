import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/views/date_view.dart';

class StartPlanningView extends StatefulWidget {
  const StartPlanningView({super.key});

  @override
  State<StartPlanningView> createState() => _StartPlanningViewState();
}

class _StartPlanningViewState extends State<StartPlanningView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Start Planning',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacing(),
            TextField(
              onChanged: (value) {
                context.read<CustomTourBloc>().add(NameChanged(value));
              },
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Name',
              ),
            ),
            const Spacing(size: SpacingSize.medium),
            Text(
              'Want To Go',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacing(),
            TextField(
              onChanged: (value) {
                context.read<CustomTourBloc>().add(DestinationChanged(value));
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.location_on,
                ),
                border: OutlineInputBorder(),
                hintText: 'Where you want to go?',
              ),
            ),
            const Spacing(size: SpacingSize.medium),
            Row(
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: BlocBuilder<CustomTourBloc, CustomTourState>(
                    builder: (context, state) {
                      return Checkbox(
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.green;
                          }
                          return Colors.grey;
                        }),
                        value: state.customTour.isExploreDestination,
                        onChanged: (bool? value) {
                          context.read<CustomTourBloc>().add(
                                IsExploreDestinationChanged(
                                  isExploreDestination: value!,
                                ),
                              );
                        },
                      );
                    },
                  ),
                ),
                Text(
                  '  I am exploring destination',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            const Spacing(size: SpacingSize.large),
            Text(
              'From',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacing(),
            TextField(
              onChanged: (value) {
                context.read<CustomTourBloc>().add(BaseLocationChanged(value));
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Where are you from?',
                prefixIcon: Icon(
                  Icons.location_on,
                ),
              ),
            ),
            const Spacer(),
            const Divider(),
            SizedBox(
              height: 6.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const SelectDateView(),
                    ),
                  );
                },
                child: const Text('Next'),
              ),
            ),
            const Spacing(),
          ],
        ),
      ),
    );
  }
}

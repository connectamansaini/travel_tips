import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/plan_tour/views/select_date_view.dart';

class StartPlanningView extends StatefulWidget {
  const StartPlanningView({super.key});

  @override
  State<StartPlanningView> createState() => _StartPlanningViewState();
}

class _StartPlanningViewState extends State<StartPlanningView> {
  bool isChecked = false;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'To',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacing(),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.location_on,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const Spacing(size: SpacingSize.medium),
            Row(
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Checkbox(
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.green;
                      }
                      return Colors.grey;
                    }),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
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
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.location_on,
                ),
              ),
            ),
            const Spacer(),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 6.h,
                  width: 40.w,
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
              ],
            ),
            const Spacing(),
          ],
        ),
      ),
    );
  }
}

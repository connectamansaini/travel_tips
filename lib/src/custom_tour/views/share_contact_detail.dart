import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/views/show_plan_tour.dart';
import 'package:travel_tips/src/custom_tour/views/widget/navigation_button_widget.dart';

class ShareContactDetail extends StatelessWidget {
  const ShareContactDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Share Contact Details',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Email Id',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacing(),
            TextField(
              onChanged: (value) {
                context.read<CustomTourBloc>().add(EmailIdChanged(value));
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const Spacing(size: SpacingSize.medium),
            Text(
              'Phone No',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacing(),
            TextField(
              onChanged: (value) {
                final phoneNo = int.parse(value);
                context.read<CustomTourBloc>().add(PhoneNoChanged(phoneNo));
              },
              keyboardType: TextInputType.phone,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.phone,
                ),
              ),
            ),
            const Spacer(),
            const Divider(),
            NavigationButtons(
              onPressedOnNext: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const ShowPlanTour(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

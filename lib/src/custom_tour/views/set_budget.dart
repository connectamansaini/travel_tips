import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/domain/enums.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/views/add_travelers.dart';
import 'package:travel_tips/src/custom_tour/views/widget/navigation_button_widget.dart';
import 'package:travel_tips/src/custom_tour/views/widget/square_button.dart';

class SetBudget extends StatefulWidget {
  const SetBudget({super.key});

  @override
  State<SetBudget> createState() => _SetBudgetState();
}

class _SetBudgetState extends State<SetBudget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Budget',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.h,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(12),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  final budget = mapIndexToBudgetPerPerson(index);

                  return BlocBuilder<CustomTourBloc, CustomTourState>(
                    builder: (context, state) {
                      return SquareButton(
                        title: 'Budget ₹$budget',
                        icon: Icons.payments,
                        selected: state.customTour.budgetPerPerson == budget,
                        onTap: () {
                          context
                              .read<CustomTourBloc>()
                              .add(BudgetPerPersonChanged(budget));
                        },
                      );
                    },
                  );
                },
              ),
            ),
            const Spacer(),
            const Divider(),
            NavigationButtons(
              onPressedOnNext: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const AddTraveler(),
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

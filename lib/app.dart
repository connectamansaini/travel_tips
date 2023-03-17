import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/repository/custom_tour_repository.dart';
import 'package:travel_tips/src/home/views/home_view.dart';
import 'package:travel_tips/src/tour/bloc/tour_bloc.dart';
import 'package:travel_tips/src/tour/repository/tour_repository.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => TourRepository(),
            ),
            RepositoryProvider(
              create: (context) => CustomTourRepository(),
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => TourBloc(context.read<TourRepository>())
                  ..add(ToursRequested()),
              ),
              BlocProvider(
                create: (context) =>
                    CustomTourBloc(context.read<CustomTourRepository>()),
              ),
            ],
            child: MaterialApp(
              title: 'Travel Tips India',
              debugShowCheckedModeBanner: false,
              theme: AppThemes.lightTheme,
              // darkTheme: AppThemes.darkTheme,
              home: const HomeView(),
            ),
          ),
        );
      },
    );
  }
}

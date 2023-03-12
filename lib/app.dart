import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/home/views/home_view.dart';
import 'package:travel_tips/src/tour/bloc/tour_bloc.dart';
import 'package:travel_tips/src/tour/repository/tour_repository.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return RepositoryProvider(
          create: (context) => TourRepository(),
          child: BlocProvider(
            create: (context) =>
                TourBloc(context.read<TourRepository>())..add(ToursRequested()),
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

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'src/core/theme.dart';
import 'src/home/views/home_view.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Travel Tips India',
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          initialRoute: HomeView.id,
          routes: {
            HomeView.id: (context) => const HomeView(),
          },
        );
      },
    );
  }
}

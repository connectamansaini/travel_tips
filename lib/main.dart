import 'package:flutter/material.dart';
import 'package:travel_tips/src/home/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Tips India',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => const HomeView(),
        // ShowDetailView.id: (context) =>  ShowDetailView(),
      },
    );
  }
}

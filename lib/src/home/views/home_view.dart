import 'package:flutter/material.dart';
import 'package:travel_tips/src/home/detail_list.dart';
import 'package:travel_tips/src/home/views/widgets/home_bottom_part_widget.dart';
import 'package:travel_tips/src/home/views/widgets/home_upper_part_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = 'home_view';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const HomeUpperPart(),
            const SizedBox(
              height: 30,
            ),
            HomeBottomPart(detail: detail)
          ],
        ),
      ),
    );
  }
}

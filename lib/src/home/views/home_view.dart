import 'package:flutter/material.dart';
import 'package:travel_tips/src/home/constants/detail_list.dart';
import 'package:travel_tips/src/home/views/widgets/home_bottom_part_widget.dart';
import 'package:travel_tips/src/home/views/widgets/home_upper_part_widget.dart';
import 'package:travel_tips/src/home/views/widgets/tour_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = 'home_view';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const HomeUpperPart(),
          const SizedBox(
            height: 16,
          ),
          HomeBottomPart(detail: detail)
        ],
      ),
    ),
    const TourView(),
    // const Center(
    //   child: Text(
    //     'Profile Page',
    //   ),
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.grey[100],
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Trips',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 220, 149, 149),
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_tips/src/home/constants/detail_list.dart';
import 'package:travel_tips/src/home/views/show_detail_view.dart';

class TourView extends StatelessWidget {
  const TourView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Tour',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TourContainer(
              index: 0,
            ),
            TourContainer(
              index: 1,
            ),
            TourContainer(
              index: 2,
            ),
            TourContainer(
              index: 3,
            ),
            TourContainer(
              index: 4,
            ),
            TourContainer(
              index: 5,
            ),
            TourContainer(
              index: 6,
            ),
            TourContainer(
              index: 7,
            ),
          ],
        ),
      ),
    );
  }
}

class TourContainer extends StatelessWidget {
  const TourContainer({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShowDetailView(index: index),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 8, right: 8, top: 12),
        width: double.infinity,
        height: 150,
        // color: Colors.black54,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(detail[index].image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Text(
          detail[index].title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        )),
      ),
    );
  }
}

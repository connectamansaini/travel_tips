import 'package:flutter/material.dart';
import 'package:travel_tips/src/home/detail_list.dart';
import 'package:travel_tips/src/home/views/show_detail_view.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.detail,
    required this.index,
  }) : super(key: key);

  final List<Detail> detail;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  ShowDetailView(index: index),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(detail[index].image), fit: BoxFit.cover),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                detail[index].title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

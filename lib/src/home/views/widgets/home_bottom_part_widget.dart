import 'package:flutter/material.dart';
import 'package:travel_tips/src/home/views/widgets/kcontainer_widget.dart';

import '../../detail_list.dart';

class HomeBottomPart extends StatelessWidget {
  const HomeBottomPart({
    Key? key,
    required this.detail,
  }) : super(key: key);

  final List<Detail> detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Best Destination",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomContainer(
                  detail: detail,
                  index: 0,
                ),
                CustomContainer(
                  detail: detail,
                  index: 1,
                ),
                CustomContainer(
                  detail: detail,
                  index: 2,
                ),
                CustomContainer(
                  detail: detail,
                  index: 3,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "More Tours",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomContainer(
                  detail: detail,
                  index: 4,
                ),
                CustomContainer(
                  detail: detail,
                  index: 5,
                ),
                CustomContainer(
                  detail: detail,
                  index: 6,
                ),
                CustomContainer(
                  detail: detail,
                  index: 7,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/tour/models/tour.dart';

class DetailTourView extends StatelessWidget {
  const DetailTourView({
    required this.tour,
    super.key,
  });
  final Tour tour;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(tour.title),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            height: 50.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  tour.titleImageUrl,
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.grey,
              // borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45.h,
                ),
                DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacing(size: SpacingSize.large),
                        Text(
                          tour.title,
                          style: Theme.of(context)
                              .largeTitlePrimaryTextStyle
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Spacing(size: SpacingSize.regular),
                        Text(
                          tour.description,
                          style: Theme.of(context)
                              .extraSmallTitlePrimaryTextStyle
                              .copyWith(),
                        ),
                        const Spacing(),
                        Wrap(
                          spacing: 8,
                          children: List.generate(
                            tour.cities.length,
                            (index) => Chip(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              label: Text(
                                tour.cities[index],
                              ),
                            ),
                          ),
                        ),
                        const Spacing(),
                        Column(
                          children: List.generate(
                            tour.daysItinerary.length,
                            (index) => Text(
                              'Day ${index + 1}: ${tour.daysItinerary[index]}',
                              style: Theme.of(context)
                                  .extraSmallTitlePrimaryTextStyle
                                  .copyWith(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

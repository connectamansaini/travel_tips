import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/domain/enums.dart';
import 'package:travel_tips/src/custom_tour/bloc/custom_tour_bloc.dart';
import 'package:travel_tips/src/custom_tour/models/custom_tour.dart';

class StarInGrid extends StatelessWidget {
  const StarInGrid({
    required this.customTour,
    super.key,
  });

  final CustomTour customTour;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        children: [
          StarBar(
            rating: Rating.star5,
            selected: customTour.hotelCategories.contains(Rating.star5),
            onTap: () {
              context
                  .read<CustomTourBloc>()
                  .add(HotelCategoryChanged(Rating.star5));
            },
          ),
          StarBar(
            rating: Rating.star4,
            selected: customTour.hotelCategories.contains(Rating.star4),
            onTap: () {
              context
                  .read<CustomTourBloc>()
                  .add(HotelCategoryChanged(Rating.star4));
            },
          ),
          StarBar(
            rating: Rating.star3,
            selected: customTour.hotelCategories.contains(Rating.star3),
            onTap: () {
              context
                  .read<CustomTourBloc>()
                  .add(HotelCategoryChanged(Rating.star3));
            },
          ),
          StarBar(
            rating: Rating.star2,
            selected: customTour.hotelCategories.contains(Rating.star2),
            onTap: () {
              context
                  .read<CustomTourBloc>()
                  .add(HotelCategoryChanged(Rating.star2));
            },
          ),
        ],
      ),
    );
  }
}

class StarBar extends StatelessWidget {
  const StarBar({
    required this.selected,
    required this.rating,
    required this.onTap,
    super.key,
  });

  final bool selected;
  final Rating rating;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
          color: selected ? Colors.tealAccent : Colors.transparent,
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: List.generate(
            mapRatingToStarLength(rating),
            (index) => const Icon(
              Icons.star,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }
}

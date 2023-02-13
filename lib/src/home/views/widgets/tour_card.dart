import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/colors.dart';
import 'package:travel_tips/src/core/theme.dart';
import 'package:travel_tips/src/models/tour.dart';

import '../../../core/constants.dart';
import 'star_rating.dart';

class TourCard extends StatelessWidget {
  final Tour tour;
  final double width, height;
  final bool flag;

  const TourCard({
    super.key,
    required this.tour,
    required this.width,
    required this.flag,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return flag ? wide(context) : tall(context);
  }

  Padding wide(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Constants.defaultPadding),
      child: Stack(
        children: [
          Container(
            height: height / 1.22,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: const ColorFilter.mode(
                  AppColors.filterColor,
                  BlendMode.darken,
                ),
                fit: BoxFit.cover,
                image: AssetImage(
                  tour.image,
                ),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 4.sp,
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 14, height: 1.6),
                children: [
                  TextSpan(
                    text: "${tour.title}\n",
                    style: Theme.of(context)
                        .smallTitlePrimaryTextStyle
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const WidgetSpan(
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 14,
                    ),
                  ),
                  TextSpan(
                    text: " ${tour.location}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 12.sp,
              right: 16.sp,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: AppColors.ratingColor,
                  ),
                  Text(
                    '${tour.rating}',
                    style: const TextStyle(
                      // color: Ap,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              )),
          Positioned(
            top: 14.sp,
            right: 20.sp,
            child: const Icon(
              Icons.bookmark,
              size: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Stack tall(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          margin: const EdgeInsets.only(right: Constants.defaultPadding),
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: const ColorFilter.mode(
                AppColors.filterColor,
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
              image: AssetImage(
                tour.image,
              ),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 14, height: 1.6),
                    children: [
                      TextSpan(
                        text: "${tour.title}\n",
                        style: Theme.of(context)
                            .smallTitlePrimaryTextStyle
                            .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const WidgetSpan(
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: " ${tour.location}",
                      ),
                      WidgetSpan(
                        child: StarRating(
                          rating: tour.rating, iconSize: 18,
                          // onRatingChanged: (rating) =>
                          //     setState(() => this.rating = rating),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: Icon(
            Icons.favorite,
            size: 24,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/colors.dart';
import 'package:travel_tips/src/core/theme.dart';
import 'package:travel_tips/src/home/views/widgets/choice_chip.dart';
import '../../core/constants.dart';
import '../../models/tour_model.dart';
import 'widgets/star_rating.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.tour});
  final TourModel tour;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image(
            image: AssetImage(tour.image),
            height: 50.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Scaffold(
            // appBar: _buildAppBar(),
            backgroundColor: Colors.transparent,
            body: _buildBody(context),
            // ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40.h),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 14,
                            color: AppColors.primaryColor,
                          ),
                          Text(tour.location),
                        ],
                      ),
                      Constants.sizedBox10Height,
                      Text(tour.title,
                          style: Theme.of(context).largeTitlePrimaryTextStyle),
                      StarRating(
                        rating: tour.rating,
                        iconSize: 18,
                        borderColor: Colors.black,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Constants.sizedBox10Height,
                  const KChoiceChips(
                    item: [
                      'Overview',
                      'Itinerary',
                      'Review & Rating',
                    ],
                  ),
                  Constants.sizedBox20Height,
                  Text(
                    tour.tripPlan,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    tour.tripPlan,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    tour.tripPlan,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    tour.tripPlan,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    tour.tripPlan,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    tour.tripPlan,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Constants.sizedBox20Height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₹${tour.price}/person',
                        style: Theme.of(context)
                            .extraSmallTitlePrimaryTextStyle
                            .copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // backgroundColor: const Color.fromARGB(255, 252, 210, 64),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        child: const Text('Book Now'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    foregroundColor: Colors.white,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.bookmark_add,
          size: 24,
          color: Colors.white,
        ),
      ),
    ],
  );
}

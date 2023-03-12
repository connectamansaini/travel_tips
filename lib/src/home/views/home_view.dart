import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/domain/status.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/plan_tour/views/start_planning_view.dart';
import 'package:travel_tips/src/tour/bloc/tour_bloc.dart';
import 'package:travel_tips/src/tour/views/detail_tour_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Tips'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'India',
              style: Theme.of(context)
                  .extraLargeTitlePrimaryTextStyle
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const Spacing(size: SpacingSize.large),
          BlocBuilder<TourBloc, TourState>(
            builder: (context, state) {
              if (state.toursStatus is StatusFailure) {
                return const Center(child: Text('Failed to Load Tours'));
              }
              if (state.toursStatus is StatusSuccess) {
                return SizedBox(
                  height: 70.h,
                  child: ListView.builder(
                    itemCount: state.tours.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final tour = state.tours[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => DetailTourView(
                                tour: tour,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 16, right: 16),
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: tour.titleImageUrl.isEmpty
                                ? null
                                : DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      tour.titleImageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.tours[index].title,
                                  style: Theme.of(context)
                                      .largeTitlePrimaryTextStyle
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const Spacing(),
                                Text(
                                  state.tours[index].description,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .extraSmallTitlePrimaryTextStyle
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => const StartPlanningView(),
            ),
          );
        },
        icon: const Icon(Icons.card_travel),
        label: const Text(
          'Plan My Holiday',
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/domain/constants.dart';
import 'package:travel_tips/src/core/presentation/colors.dart';
import 'package:travel_tips/src/core/presentation/theme.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';
import 'package:travel_tips/src/tour/models/tour.dart';

class DetailTourView extends StatefulWidget {
  const DetailTourView({
    required this.tour,
    super.key,
  });
  final Tour tour;

  @override
  State<DetailTourView> createState() => _DetailTourViewState();
}

class _DetailTourViewState extends State<DetailTourView> {
  // TODO(ask): how to change logic of this index?
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tour.title),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            height: 50.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  widget.tour.titleImageUrl,
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
                  height: 40.h,
                ),
                DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 18,
                      right: 18,
                      bottom: 6.h,
                      top: 26,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CitiesRow(widget: widget),
                        const Spacing(),
                        Text(
                          widget.tour.title,
                          style: Theme.of(context)
                              .largeTitlePrimaryTextStyle
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Spacing(),
                        Wrap(
                          spacing: 8,
                          children: List.generate(
                            Constants.choices.length,
                            (index) => ChoiceChip(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 12,
                              ),
                              label: Text(Constants.choices[index]),
                              selected: _index == index,
                              selectedColor: AppColors.primaryColor,
                              backgroundColor: Colors.grey,
                              onSelected: (bool selected) {
                                setState(() {
                                  _index = selected ? index : 0;
                                });
                              },
                              labelStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const Spacing(),
                        Column(
                          children: _index == 0
                              ? [
                                  Text(
                                    widget.tour.description,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontSize: 18,
                                        ),
                                  ),
                                ]
                              : List.generate(
                                  widget.tour.daysItinerary.length,
                                  (index) => RichText(
                                    text: TextSpan(
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 16),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Day ${index + 1}: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        TextSpan(
                                          text:
                                              // ignore: lines_longer_than_80_chars
                                              '${widget.tour.daysItinerary[index]}\n',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        ),
                        const Spacing(size: SpacingSize.medium),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat),
                  label: const Text('Message Us On WhatsApp'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CitiesRow extends StatelessWidget {
  const CitiesRow({
    required this.widget,
    super.key,
  });

  final DetailTourView widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          size: 18,
        ),
        const Spacing(
          isVertical: false,
          size: SpacingSize.tiny,
        ),
        Wrap(
          spacing: 8,
          children: List.generate(
            widget.tour.cities.length,
            (index) => Text(
              widget.tour.cities[index],
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
      ],
    );
  }
}

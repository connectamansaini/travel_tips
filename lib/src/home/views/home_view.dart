import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/colors.dart';
import 'package:travel_tips/src/core/constants.dart';
import 'package:travel_tips/src/core/theme.dart';
import '../../models/tour_model.dart';
import 'detail_view.dart';
import 'widgets/category_button.dart';
import 'widgets/choice_chip.dart';
import 'widgets/tour_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = 'home_view';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> _choices = ['All', 'Asia', 'Europe', 'America', 'Oceania'];

  // final bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(context),
    );
  }

  SingleChildScrollView buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadLine(),
            Constants.sizedBox20Height,
            const SearchBar(),
            Constants.sizedBox20Height,
            const Title(title: 'Exclusive Package'),
            Constants.sizedBox10Height,
            KChoiceChips(item: _choices),
            Constants.sizedBox10Height,
            TourCardRow(height: 40.h, width: 70.w, flag: true),
            Constants.sizedBox20Height,
            const Title(title: 'Explore Category'),
            Constants.sizedBox20Height,
            const CategoryCardRow(),
            Constants.sizedBox20Height,
            const Title(title: 'Recommended Package'),
            Constants.sizedBox20Height,
            TourCardRow(height: 30.h, width: 45.w, flag: false),
            Constants.sizedBox20Height,
            const Title(title: 'Know Your World'),
            Text('Grow your world knowledge',
                style: Theme.of(context).extraSmallTitleTertiaryTextStyle),
            Constants.sizedBox20Height,
            const CustomGridView(),
            Constants.sizedBox20Height,
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'Travel Tips',
      ),
      actions: [
        IconButton(
          // color: Colors.black,
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
          ),
        ),
      ],
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 15.h,
          childAspectRatio: 0.4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0,
        ),
        itemCount: tours.length,
        itemBuilder: (BuildContext ctx, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10.h,
                width: 20.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(tours[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                // alignment: Alignment.center,
                // child: Text(tours[index].title),
              ),
              Constants.sizedBox10Width,
              RichText(
                text: TextSpan(
                  text: tours[index].title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nCity of',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CategoryCardRow extends StatefulWidget {
  const CategoryCardRow({super.key});

  @override
  State<CategoryCardRow> createState() => _CategoryCardRowState();
}

class _CategoryCardRowState extends State<CategoryCardRow> {
  int indexChooseCategory = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            indexChooseCategory = 1;
          }),
          child: CategoryButton(
            image: 'assets/category_images/beach.png',
            color: indexChooseCategory == 1
                ? const Color.fromRGBO(93, 199, 32, 1)
                : const Color.fromRGBO(218, 218, 218, 1),
            title: 'Beach',
          ),
        ),
        Constants.sizedBox20Width,
        GestureDetector(
          onTap: () => setState(() {
            indexChooseCategory = 2;
          }),
          child: CategoryButton(
            image: 'assets/category_images/mountain.png',
            color: indexChooseCategory == 2
                ? const Color.fromRGBO(93, 199, 32, 1)
                : const Color.fromRGBO(218, 218, 218, 1),
            title: 'Mountain',
          ),
        ),
      ],
    );
  }
}

class TourCardRow extends StatelessWidget {
  final double height, width;
  final bool flag;
  const TourCardRow({
    super.key,
    required this.height,
    required this.width,
    required this.flag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 100.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tours.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailView(tour: tours[index]),
                ),
              );
            },
            child: TourCard(
              tour: tours[index],
              width: width,
              height: height,
              flag: flag,
            ),
          );
        },
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .smallTitlePrimaryTextStyle
          .copyWith(fontWeight: FontWeight.w500),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Where are you going?',

        prefixIcon: const Icon(
          Icons.search,
        ),
        // contentPadding: const EdgeInsets.all(0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: const Color.fromARGB(10, 0, 0, 0),
        filled: true,
      ),
    );
  }
}

class HeadLine extends StatelessWidget {
  const HeadLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Where do you \nwant to explore today?',
      style: Theme.of(context).extraLargeTitlePrimaryTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            height: 1.4,
          ),
    );
  }
}

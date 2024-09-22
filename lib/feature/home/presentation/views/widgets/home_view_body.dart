import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'featured_box_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppbar(),
            ),
            FeaturedBoxListView(),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Best Seller",
                style: Styles.textStyle18,
              ),
            ),
          ],
        )),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}

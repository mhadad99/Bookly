import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomListViewItem(),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

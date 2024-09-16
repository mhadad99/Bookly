import 'package:bookly/feature/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'CustomListViewItem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
        CustomListViewItem(),
      ],
    );
  }
}

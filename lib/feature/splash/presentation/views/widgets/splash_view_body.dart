import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            width: (MediaQuery.of(context).size.width) / 1.2,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Read Free Course",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

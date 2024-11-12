import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomListViewItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "19.99 €",
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        16,
                      ),
                      bottomLeft: Radius.circular(
                        16,
                      ),
                    ),
                    textColor: Colors.black,
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    text: "Free Preview",
                    backgroundColor: Color(0xffef8262),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        16,
                      ),
                      bottomRight: Radius.circular(
                        16,
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

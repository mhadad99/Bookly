import 'package:bookly/feature/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                BookDetailsSection(),
                Spacer(),
                SimilarBooksSection(),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

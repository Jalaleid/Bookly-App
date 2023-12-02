import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'costum_app_bar.dart';
import 'best_saller_list_view.dart';
import 'books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CostumeAppBar(),
                  SizedBox(
                    height: 20,
                  ),
                  FeaturedBooksListView(),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'New Books',
                    style: Styles.titleMeduim,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: FeaturedNewBooksListView(),
          )
        ]);
  }
}

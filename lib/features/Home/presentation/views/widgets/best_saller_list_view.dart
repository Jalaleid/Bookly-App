import 'package:bookly/core/utils/widgets/costum_error_widget.dart';
import 'package:bookly/core/utils/widgets/costum_loading_indicator.dart';
import 'package:bookly/features/Home/presentation/manger/newst_books_cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'costum_best_saller_list_view_item.dart';

class FeaturedNewBooksListView extends StatelessWidget {
  const FeaturedNewBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccess) {
          return SizedBox(
            height: 300,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              //shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) =>
                  BestSallerListViewItem(model: state.books[index]),
            ),
          );
        } else if (state is NewstBooksFailure) {
          return CostumErrorWidget(errMessage: state.errMessage);
        } else if (state is NewstBooksLoading) {
          return const CostumLoadingIndicator();
        } else {
          return const Center(
            child: Text("Error"),
          );
        }
      },
    );
  }
}

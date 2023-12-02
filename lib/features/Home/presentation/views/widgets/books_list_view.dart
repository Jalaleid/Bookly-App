import 'package:bookly/features/Home/presentation/manger/featuerd_books_cubit/featuerd_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/costum_list_view_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/costum_error_widget.dart';
import '../../../../../core/utils/widgets/costum_loading_indicator.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBooksCubit, FeatuerdBooksState>(
      builder: (context, state) {
        if (state is FeatuerdBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: CostumListViewItem(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks.thumbnail,
                      ),
                    ))),
          );
        } else if (state is FeatuerdBooksFailuer) {
          return CostumErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CostumLoadingIndicator();
        }
      },
    );
  }
}

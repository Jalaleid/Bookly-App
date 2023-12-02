import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/style.dart';
import '../../../data/models/book_model/book_model.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key, required this.model});
  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 125,
          //width: 150,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              model.volumeInfo.imageLinks.thumbnail))),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      model.volumeInfo.authors!.first,
                      style: Styles.titleMeduim
                          .copyWith(fontSize: 14, color: Colors.grey.shade500),
                    ),
                    Row(
                      children: [
                        Text(
                          'Free \$',
                          style: Styles.titleMeduim
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.solidStar,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '4.8',
                              style: Styles.titleMeduim.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            const Text(' (2,482)')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

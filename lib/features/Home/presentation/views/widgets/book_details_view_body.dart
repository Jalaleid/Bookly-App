import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/style.dart';
import 'app_bar_book_details_view.dart';
import 'books_actions.dart';
import 'costum_list_view_Item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppBarBookDetailsView(),
            const SizedBox(
              height: 20,
            ),
            // Container(
            //   height: MediaQuery.sizeOf(context).height * .35,
            //   decoration: const BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage('assets/images/test2.png'))),
            // ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .35,
              child: const CostumListViewItem(
                imageUrl: '',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('The Joungle Book', style: Styles.titleLarge),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Rudyard Kipling',
              style: Styles.titleSmall.copyWith(
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  style:
                      Styles.titleSmall.copyWith(fontWeight: FontWeight.w700),
                ),
                const Text(' (2,482)')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const BooksActions(),
            const SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like :',
                  style:
                      Styles.titleSmall.copyWith(fontWeight: FontWeight.w700),
                )),
          ],
        ));
  }
}

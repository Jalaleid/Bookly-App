import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/costum_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CostumButton(
                text: '99\$',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
          ),
          Expanded(
            child: CostumButton(
                text: 'Free Preview',
                backgroundColor: Color(0xffef8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
          ),
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';

class MenuButtonWidget extends StatelessWidget {
  const MenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(40)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

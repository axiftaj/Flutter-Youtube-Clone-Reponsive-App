

import 'package:flutter/material.dart';

class LikeAndDislikeButtonWidget extends StatelessWidget {
  const LikeAndDislikeButtonWidget({super.key});

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
            IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up_alt_outlined),),
            const  SizedBox(width: 5,),
            const  Text('4.2K  |'),
            const  SizedBox(width: 5,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_down_off_alt),),

          ],
        ),
      ),
    );
  }
}

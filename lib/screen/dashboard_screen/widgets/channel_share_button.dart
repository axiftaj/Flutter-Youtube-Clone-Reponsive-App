


import 'package:flutter/material.dart';

class ChannelShareButton extends StatelessWidget {
  const ChannelShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(40)
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(width: 5,),
          const  Text('Share'),
          const  SizedBox(width: 15,)
        ],
      ),
    );
  }
}

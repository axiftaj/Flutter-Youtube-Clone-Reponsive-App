


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
            icon: Icon(Icons.share_outlined),
          ),
          SizedBox(width: 5,),
          Text('Share'),
          SizedBox(width: 15,)
        ],
      ),
    );
  }
}

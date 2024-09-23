import 'package:flutter/material.dart';

class ChannelProfileButtonBar extends StatelessWidget {
  const ChannelProfileButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'), // Replace with your image
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Tech Brother',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  '40k subscribers',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none_outlined),),
                    SizedBox(width: 5,),
                    Text('Subscribe'),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.circular(40)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined),),
                SizedBox(width: 5,),
                Text('4.2K  |'),
                SizedBox(width: 5,),
                IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down_off_alt),),

              ],
            ),
          ),
        ),
        Container(
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
                  icon: Icon(Icons.share_outlined),
                ),
                SizedBox(width: 5,),
                Text('Share'),
              ],
            ),
          ),
        ),
        Container(
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
                  icon: Icon(Icons.more_horiz_outlined),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

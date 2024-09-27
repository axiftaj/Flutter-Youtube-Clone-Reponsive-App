

import 'package:flutter/material.dart';

class SubscribeButtonWidget extends StatelessWidget {
  const SubscribeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
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
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_outlined),),
              const Text('Subscribe'),
              const  SizedBox(width: 15,)
            ],
          ),
        ),
      ],
    );
  }
}

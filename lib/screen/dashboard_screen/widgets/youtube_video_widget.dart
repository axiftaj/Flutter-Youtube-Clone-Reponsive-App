

import 'package:flutter/material.dart';


class YoutubeVideoWidget extends StatefulWidget {
  const YoutubeVideoWidget({super.key});

  @override
  State<YoutubeVideoWidget> createState() => _YoutubeVideoWidgetState();
}

class _YoutubeVideoWidgetState extends State<YoutubeVideoWidget> {



  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16/9,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(.1),

        ),
      ),
    );
  }


}



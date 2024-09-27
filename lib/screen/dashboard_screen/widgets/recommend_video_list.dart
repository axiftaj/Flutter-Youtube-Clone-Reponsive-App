

import 'package:flutter/material.dart';


class VideoRecommendationList extends StatelessWidget {
  final List<VideoRecommendation> videos = [
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/MQ1_wPyVLVc/maxresdefault.jpg',  // Flutter Crash Course for Beginners
      title: 'The Best Flutter Course in 3 Hours • Pizza App #1',
      views: '1M views',
      time: '3 years ago',
      duration: '2:00:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/MrPJBAOzKTQ/maxresdefault.jpg',  // Flutter Crash Course for Beginners
      title: 'Build a Flutter App from Scratch',
      views: '500K views',
      time: '2 years ago',
      duration: '1:20:45',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/mMMbwdDqljc/maxresdefault.jpg',  // Flutter Animation Basics
      title: 'Flutter NEWS App Demo || Flutter NEWS app tutorials in Hindi/Urdu',
      views: '220K views',
      time: '1 year ago',
      duration: '15:10',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/Ow20XapS7Y8/0.jpg',  // State Management with Provider
      title: 'Introduction to OOP & Roadmap || Dart OOP Tutorials For Beginners in Hindi/Urdu',
      views: '340K views',
      time: '2 years ago',
      duration: '40:23',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/-jcjhbOpDTg/0.jpg',  // Best Practices for Flutter Forms
      title: '| Flutter Bloc Patterns || Flutter Clean Architecture with Bloc State Management',
      views: '90K views',
      time: '1 year ago',
      duration: '25:30',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/D4nhaszNW4o/0.jpg',  // Flutter Firebase Tutorial for Beginners
      title: 'Flutter Basics by a REAL Project',
      views: '300K views',
      time: '6 months ago',
      duration: '1:15:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/kJQCLrExrns/0.jpg',  // Flutter vs React Native
      title: 'Top 7 Flutter Animations',
      views: '400K views',
      time: '1 year ago',
      duration: '12:45',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/70UhM3mx4Cw/0.jpg',  // Networking in Flutter
      title: '📱DOPE Animations • Flutter Tutorial ♡',
      views: '180K views',
      time: '1 year ago',
      duration: '30:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/mhxoXm8lWIo/0.jpg',  // Flutter UI Challenges
      title: 'Top 30 Flutter Tips and Tricks',
      views: '200K views',
      time: '5 months ago',
      duration: '45:50',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/5-V0-y1iP3Q/0.jpg',  // Advanced Flutter Animations
      title: 'React Native vs Flutter | Which one should you Learn in 2022 ?',
      views: '150K views',
      time: '3 months ago',
      duration: '20:15',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/fDTf1mk-jQg/0.jpg',  // Flutter Widget of the Week
      title: 'Learn Mongodb aggregation pipelines',
      views: '250K views',
      time: '2 years ago',
      duration: '10:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/HD5gYnspYzk/0.jpg',  // Building Responsive Apps with Flutter
      title: 'Adaptive vs. Responsive | Decoding Flutter',
      views: '75K views',
      time: '1 year ago',
      duration: '32:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/GYOqItTEg1g/0.jpg',  // Flutter for Web Tutorial
      title: 'Make HTTP Requests with Flutter',
      views: '110K views',
      time: '8 months ago',
      duration: '1:10:20',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/5AxWC49ZMzs/0.jpg',  // Integrating APIs in Flutter
      title: 'Async vs Isolates | Decoding Flutter',
      views: '125K views',
      time: '9 months ago',
      duration: '35:30',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videos.length,
      shrinkWrap: true,
      physics: const  NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return VideoCard(video: videos[index]);
      },
    );
  }
}

class VideoRecommendation {
  final String thumbnailUrl;
  final String title;
  final String views;
  final String time;
  final String duration;

  VideoRecommendation({
    required this.thumbnailUrl,
    required this.title,
    required this.views,
    required this.time,
    required this.duration,
  });
}

class VideoCard extends StatelessWidget {
  final VideoRecommendation video;

  const VideoCard({required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail Image
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: NetworkImage(video.thumbnailUrl),
                  width: 150,
                  height: 84,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  color: Colors.black,
                  padding: const  EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Text(
                    video.duration,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          // Video Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  video.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Text(
                  '${video.views} • ${video.time}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // Three dots menu icon
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

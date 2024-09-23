

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
      thumbnailUrl: 'https://img.youtube.com/vi/YATaW7gOBYQ/0.jpg',  // State Management with Provider
      title: 'State Management with Provider',
      views: '340K views',
      time: '2 years ago',
      duration: '40:23',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/NsUWxBRITD8/0.jpg',  // Best Practices for Flutter Forms
      title: 'Best Practices for Flutter Forms',
      views: '90K views',
      time: '1 year ago',
      duration: '25:30',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/lJpEMynG_dg/0.jpg',  // Flutter Firebase Tutorial for Beginners
      title: 'Flutter Firebase Tutorial for Beginners',
      views: '300K views',
      time: '6 months ago',
      duration: '1:15:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/U6H_bG0R-Jo/0.jpg',  // Flutter vs React Native
      title: 'Flutter vs React Native',
      views: '400K views',
      time: '1 year ago',
      duration: '12:45',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/BP8FYVYz7S4/0.jpg',  // Networking in Flutter
      title: 'Networking in Flutter',
      views: '180K views',
      time: '1 year ago',
      duration: '30:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/1YzjZn_yN4M/0.jpg',  // Flutter UI Challenges
      title: 'Flutter UI Challenges',
      views: '200K views',
      time: '5 months ago',
      duration: '45:50',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/p4wI5W8Frs0/0.jpg',  // Advanced Flutter Animations
      title: 'Advanced Flutter Animations',
      views: '150K views',
      time: '3 months ago',
      duration: '20:15',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/Wp3dC3MnKjI/0.jpg',  // Flutter Widget of the Week
      title: 'Flutter Widget of the Week',
      views: '250K views',
      time: '2 years ago',
      duration: '10:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/dh38yqS87C8/0.jpg',  // Building Responsive Apps with Flutter
      title: 'Building Responsive Apps with Flutter',
      views: '75K views',
      time: '1 year ago',
      duration: '32:00',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/Z1lX7I4gWgY/0.jpg',  // Flutter for Web Tutorial
      title: 'Flutter for Web Tutorial',
      views: '110K views',
      time: '8 months ago',
      duration: '1:10:20',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://img.youtube.com/vi/JN5uGajSXL4/0.jpg',  // Integrating APIs in Flutter
      title: 'Integrating APIs in Flutter',
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
      physics: NeverScrollableScrollPhysics(),
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

  VideoCard({required this.video});

  @override
  Widget build(BuildContext context) {
    print(video.thumbnailUrl);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail Image
          Stack(
            children: [
              Image(
                image: NetworkImage(video.thumbnailUrl),
                width: 150,
                height: 84,
                fit: BoxFit.cover,
              ),
              // Image(image: NetworkImage('https://images.pexels.com/photos/27689131/pexels-photo-27689131/free-photo-of-black-and-white-photograph-of-terraced-rice-fields.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load'), width: 150,
              //   height: 84,
              //   fit: BoxFit.cover,),
              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Text(
                    video.duration,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
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



import 'package:flutter/material.dart';





class VideoRecommendationList extends StatelessWidget {
  final List<VideoRecommendation> videos = [
    VideoRecommendation(
      thumbnailUrl: 'https://via.placeholder.com/150',
      title: 'Responsive Dashboard UI - FLUTTER Tutorial',
      views: '145K views',
      time: '2 years ago',
      duration: '29:33',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://via.placeholder.com/150',
      title: 'Zama Shereen Lalaial - Pashto New Song',
      views: '60K views',
      time: '3 months ago',
      duration: '23:38',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://via.placeholder.com/150',
      title: '10x Your Speed With Flutter',
      views: '44K views',
      time: '4 weeks ago',
      duration: '8:04',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://via.placeholder.com/150',
      title: 'Top 10 Flutter Widgets (for Responsive Layouts)',
      views: '72K views',
      time: '2 years ago',
      duration: '13:17',
    ),
    VideoRecommendation(
      thumbnailUrl: 'https://via.placeholder.com/150',
      title: 'Flutter Responsive - Flutter Tips',
      views: 'Boolean - Playlist',
      time: '',
      duration: '10 videos',
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail Image
          Stack(
            children: [
              Image(image: NetworkImage('https://images.pexels.com/photos/27689131/pexels-photo-27689131/free-photo-of-black-and-white-photograph-of-terraced-rice-fields.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load'), width: 150,
                height: 84,
                fit: BoxFit.cover,),
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

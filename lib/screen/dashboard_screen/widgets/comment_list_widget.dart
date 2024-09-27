


import 'package:flutter/material.dart';

class CommentListWidget extends StatelessWidget {
  CommentListWidget({super.key});


   final List<YouTubeComment> comments = [
     YouTubeComment(
       userName: "@johndoe",
       userProfile: "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
       timeAgo: "2 hours ago",
       comment: "This video changed my entire perspective! Thank you!",
       replyCount: 5,
     ),
     YouTubeComment(
       userName: "@janesmith",
       userProfile: "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
       timeAgo: "1 day ago",
       comment: "Amazing content! Can't wait for your next upload!",
       replyCount: 2,
     ),
     YouTubeComment(
       userName: "@gomes",
       userProfile: "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
       timeAgo: "30 minutes ago",
       comment: "Who else is watching this at midnight? 😂",
       replyCount: 0,
     ),
     YouTubeComment(
       userName: "@emilybrown",
       userProfile: "https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
       timeAgo: "3 days ago",
       comment: "The quality of your videos is out of this world! Keep it up!",
       replyCount: 7,
     ),
     YouTubeComment(
       userName: "@michael_johnson",
       userProfile: "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
       timeAgo: "5 hours ago",
       comment: "Loved the breakdown. I learned so much in just a few minutes!",
       replyCount: 3,
     ),
   ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: comments.length,
        itemBuilder: (context, index){
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(comments[index].userProfile),),
          title: Text(comments[index].userName,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),
          ),
          subtitle: Text(comments[index].comment ,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500 ,color: Colors.white),
          ),
          trailing: const Icon(Icons.more_vert),
        );
        }
    );
  }
}


class YouTubeComment {
  final String userName;
  final String userProfile; // URL or path to profile image
  final String timeAgo; // How long ago the comment was posted
  final String comment; // The comment text
  final int replyCount; // Number of replies to the comment

  YouTubeComment({
    required this.userName,
    required this.userProfile,
    required this.timeAgo,
    required this.comment,
    required this.replyCount,
  });
}

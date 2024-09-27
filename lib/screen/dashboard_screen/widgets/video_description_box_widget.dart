import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class VideoDescriptionBoxWidget extends StatelessWidget {
  const VideoDescriptionBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(color: Colors.white.withOpacity(.1), borderRadius: BorderRadius.circular(16)),
        child: const Padding(
          padding:  EdgeInsets.all(20.0),
          child: ReadMoreText('''🚀 Welcome to the Ultimate Flutter Course for Beginners! 🖥️📱
Are you ready to build beautiful, high-performance mobile apps with Flutter? Whether you're completely new to mobile development or a seasoned coder, this course will take you from zero to hero in Flutter! 💪💡

What you'll learn: ✅ Flutter Basics: Set up your environment & build your first app 🎉 ✅ Dart Programming: Master the language behind Flutter 💻 ✅ UI/UX Design: Create stunning, responsive layouts for any screen size 📱🖥️ ✅ State Management: Understand how to efficiently manage app data 🧠 ✅ APIs & Backend: Fetch and display data in real-time 🌐 ✅ Deployment: Get your apps live on both iOS & Android platforms 🚀

📅 Weekly Updates: Stay tuned for new lessons, tips, and Flutter tricks to keep leveling up! 🆙

🎯 Whether you're building your first app or want to improve your skills, this course has everything you need! Let's code, create, and innovate together. 💻👨‍💻👩‍💻

👉 Don't forget to LIKE, SUBSCRIBE, and TURN ON NOTIFICATIONS to stay updated with the latest lessons! 🔔📢''' ,
            trimCollapsedText: '...Show more',
            trimExpandedText: 'show less',
          ),
        ),
      ),
    );
  }
}

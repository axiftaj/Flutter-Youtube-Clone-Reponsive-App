import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import '../../responsive.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          primary: true,
          shrinkWrap: true,
          children: [
           const Padding(
              padding:  EdgeInsets.all(8),
              child:  Header(),
            ),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Expanded(
                 flex: 2,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                      const  YoutubeVideoWidget(),
                      const SizedBox(height: 12,),
                        Text(
                      'Harsh Truth Of Java 2024 |  Ft. Asif Taj',
                         style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,
                       ),
                      const SizedBox(height: 5,),
                       const ChannelProfileButtonBar(),
                       if (Responsive.isDesktop(context) || Responsive.isTablet(context) )
                       const VideoDescriptionBoxWidget(),
                       if (Responsive.isDesktop(context))
                         CommentListWidget()
                     ],
                   ),
                 ),
               ),
               if (Responsive.isDesktop(context))
                 Expanded(
                   flex: 1,
                   child: VideoRecommendationList(),
                 ),
             ],
           ),
            if (Responsive.isMobile(context) )
              const VideoDescriptionBoxWidget(),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: VideoRecommendationList(),
              ),
          ],
        )
    );
  }
}
